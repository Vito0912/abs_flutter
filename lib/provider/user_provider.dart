import 'dart:convert';
import 'dart:developer';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abs_api/abs_api.dart' as abs_api;
import 'package:abs_api/src/auth/bearer_auth.dart';
import 'package:go_router/go_router.dart';

// StateNotifier to manage the users list and selected user
class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier([List<User>? initialUsers]) : super(initialUsers ?? []) {
    addListener(_save);
  }

  _save(List<User> users) {
    print('changed');

    secureStorage.write(key: 'users', value: jsonEncode(users));
  }

  void setUsers(List<User> users) {
    _updateState(users);
  }

  void addUser(User user) {
    _updateState([...state, user]);
  }

  void removeUser(User user) {
    _updateState(state.where((u) => u.id != user.id).toList());
  }

  void updateUserAtIndex(int index, User user, {bool? notify = false}) {
    // TODO: Currently everything connected with the user will be refreshed when changing any setting.
    if (index >= 0 && index < state.length) {
      final updatedUsers = [...state];
      updatedUsers[index] = user;
      _updateState(updatedUsers);
    }
  }

  void _updateState(List<User> newState) {
    state = newState;
    for (var user in state) {
      if (user.setting == null) {
        user.setting ??= Setting();
        for (var setting in defaultSettings.keys) {
          user.setting!.settings[setting] = defaultSettings[setting];
        }
      }
    }
    secureStorage.write(key: 'users', value: jsonEncode(state));
  }
}

final usersProvider =
    StateNotifierProvider<UserNotifier, List<User>>((ref) => UserNotifier());

// StateNotifier to manage the selected user index and save it to SharedPreferences
class SelectedUserNotifier extends StateNotifier<int> {
  SelectedUserNotifier() : super(-1);

  @override
  set state(int value) {
    super.state = value;
    _saveSelectedUser(value);
  }

  Future<void> _saveSelectedUser(int userIndex) async {
    await sp.setInt('currentUser', userIndex);
  }
}

final selectedUserProvider = StateNotifierProvider<SelectedUserNotifier, int>(
    (ref) => SelectedUserNotifier());

class CurrentUserNotifier extends StateNotifier<User?> {
  final Ref _ref;

  CurrentUserNotifier(this._ref) : super(null) {
    // Initialize the current user when the class is instantiated
    _initializeCurrentUser();

    // Listen to changes in usersProvider
    _ref.listen<List<User>>(usersProvider, (previous, next) {
      _updateCurrentUser();
    });

    // Listen to changes in selectedUserProvider
    _ref.listen<int>(selectedUserProvider, (previous, next) {
      _updateCurrentUser();
    });
  }

  void _initializeCurrentUser() {
    _updateCurrentUser();
  }

  void _updateCurrentUser() {
    final users = _ref.read(usersProvider);
    final selectedUserIndex = _ref.read(selectedUserProvider);

    if (selectedUserIndex >= 0 && selectedUserIndex < users.length) {
      state = users[selectedUserIndex];
    } else {
      state = null;
    }
  }

  User? _getUser(int index) {
    final users = _ref.read(usersProvider);
    if (index >= 0 && index < users.length) {
      return users[index];
    }
    return null;
  }

  void updateUserSettings(String key, dynamic value, {int? index}) {
    final selectedUserIndex = index ?? _ref.read(selectedUserProvider);
    User? user = _getUser(selectedUserIndex!);
    if (user != null) {
      user.setting ??= Setting();
      final updatedUser = user.copyWith(
        setting: user.setting!.copyWith(
          settings: {...user.setting!.settings, key: value},
        ),
      );

      state = updatedUser;
      _ref
          .read(usersProvider.notifier)
          .updateUserAtIndex(selectedUserIndex, updatedUser);
    }
  }

  void removeUser(BuildContext context) {
    final allUsers = _ref.read(usersProvider.notifier);
    allUsers.removeUser(state!);
    _ref.read(selectedUserProvider.notifier).state =
        (allUsers.state.length - 1) > 0 ? 0 : -1;
    state = null;
    context.go("/");
  }
}

final currentUserProvider =
    StateNotifierProvider<CurrentUserNotifier, User?>((ref) {
  return CurrentUserNotifier(ref);
});

// StateProvider to hold the overridden base path
final basePathOverrideProvider = StateProvider<String?>((ref) => null);

// Provider to manage the API client
final apiProvider = Provider<abs_api.AbsApi?>((ref) {
  final users = ref.watch(usersProvider);
  final selectedUserIndex = ref.watch(selectedUserProvider);
  final basePathOverride = ref.watch(basePathOverrideProvider);

  // If there is an overridden base path, use it
  if (basePathOverride != null) {
    return abs_api.AbsApi(basePathOverride: basePathOverride);
  }

  List<Interceptor> interceptors = [
    abs_api.OAuthInterceptor(),
    abs_api.BasicAuthInterceptor(),
    BearerAuthInterceptor(),
    abs_api.ApiKeyAuthInterceptor(),
  ];
  interceptors.add(InterceptorsWrapper(
    onError: (DioException error, ErrorInterceptorHandler handler) {
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.sendTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.connectionTimeout) {
        ref.read(connectionProvider.notifier).setServerState(false);
      }
      return handler.next(error);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        ref.read(connectionProvider.notifier).setServerState(true);
      }
      return handler.next(response);
    },
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      log('Request: ${options.uri.toString()}');
      return handler.next(options);
    },
  ));

  // Otherwise, use the user's server URL
  if (selectedUserIndex >= 0 && selectedUserIndex < users.length) {
    abs_api.AbsApi api = abs_api.AbsApi(
        interceptors: interceptors,
        basePathOverride: users[selectedUserIndex].server?.url);

    final token = users[selectedUserIndex].token;

    // Set up Bearer authentication
    if (token != null) {
      api.setBearerAuth('BearerAuth', token);
    }

    return api;
  }

  return null;
});

// Function to set the base path override
void setBasePathOverride(WidgetRef ref, String? newBasePath) {
  ref.read(basePathOverrideProvider.notifier).state = newBasePath;
}

// Function to reset the base path override
void resetBasePathOverride(WidgetRef ref) {
  ref.read(basePathOverrideProvider.notifier).state = null;
}

final settingsProvider = Provider<Map<String, dynamic>>((ref) {
  final user = ref.watch(currentUserProvider);
  return user?.setting?.settings ?? defaultSettings;
});