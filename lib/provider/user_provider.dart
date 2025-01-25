import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:abs_api/abs_api.dart' as abs_api;
import 'package:abs_api/src/auth/bearer_auth.dart';
import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/api/routes/interceptors/bearer_auth_interceptor.dart'
    as abs;
import 'package:abs_flutter/api/routes/interceptors/o_auth_interceptor.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:abs_flutter/util/interceptor/abs_interceptor.dart';
import 'package:abs_flutter/util/interceptor/cache_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// StateNotifier to manage the users list and selected user
class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier([List<User>? initialUsers]) : super(initialUsers ?? []) {
    addListener(_save);
  }

  _save(List<User> users) {
    List<User> newUsers = [];
    for (var user in users) {
      newUsers.add(user.copyWith(mediaProgress: null, bookmarks: null));
    }

    log(newUsers.toString());
    if (!kIsWeb && Platform.isLinux) {
      sp.setString('users', jsonEncode(newUsers));
    } else {
      secureStorage.write(key: 'users', value: jsonEncode(newUsers));
    }
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
        user.setting!.settings = defaultSettings;
      }
    }
    _save(state);
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
    _initializeCurrentUser();
  }

  void _initializeCurrentUser() {
    final users = _ref.watch(usersProvider);
    final selectedUserIndex = _ref.watch(selectedUserProvider);
    if (selectedUserIndex >= 0 && selectedUserIndex < users.length) {
      cachingEnabled =
          users[selectedUserIndex].setting?.settings['cachingEnabled'] ?? true;
      aggressiveCaching =
          users[selectedUserIndex].setting?.settings['aggressiveCaching'] ??
              true;
      boostLoading =
          users[selectedUserIndex].setting?.settings['boostLoading'] ?? false;
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

  Future<bool> validateLogin() async {
    final user = state;
    if (user == null) return Future.value(false);

    final api = _ref.read(apiProviderNew);
    if (api == null) return Future.value(false);

    try {
      final response = await api.getMeApi().checkLogin();
      if (response.statusCode == 500) {
        return Future.value(false);
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value(true);
  }

  void removeUser(BuildContext context) {
    final allUsers = _ref.read(usersProvider.notifier);
    if (allUsers == null || allUsers.mounted == false) return;

    allUsers.removeUser(state!);
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
  final users = ref.read(usersProvider);
  final index = ref.watch(selectedUserProvider);
  final basePathOverride = ref.watch(basePathOverrideProvider);

  // If there is an overridden base path, use it
  if (basePathOverride != null) {
    abs_api.AbsApi res = abs_api.AbsApi(basePathOverride: basePathOverride);
    return res;
  }

  List<Interceptor> interceptors = [
    abs_api.OAuthInterceptor(),
    abs_api.BasicAuthInterceptor(),
    BearerAuthInterceptor(),
    abs_api.ApiKeyAuthInterceptor(),
    CacheInterceptor(ref),
    ABSInterceptor(ref),
  ];

  // Otherwise, use the user's server URL
  if (index >= 0) {
    abs_api.AbsApi api = abs_api.AbsApi(
        dio: Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 3),
            receiveTimeout: const Duration(seconds: 20),
            baseUrl: users[index].server?.url ?? r'http://localhost:3000',
          ),
        ),
        interceptors: interceptors,
        basePathOverride: users[index].server?.url);

    final token = users[index].token;

    // Set up Bearer authentication
    if (token != null) {
      api.setBearerAuth('BearerAuth', token);
    }

    return api;
  }

  return null;
});

final apiProviderNew = Provider<ABSApi?>((ref) {
  final users = ref.read(usersProvider);
  final index = ref.watch(selectedUserProvider);
  final basePathOverride = ref.watch(basePathOverrideProvider);

  // If there is an overridden base path, use it
  if (basePathOverride != null) {
    ABSApi res = ABSApi(basePathOverride: basePathOverride);
    return res;
  }

  List<Interceptor> interceptors = [
    OAuthInterceptor(),
    abs.BearerAuthInterceptor(),
    CacheInterceptor(ref),
    ABSInterceptor(ref),
  ];

  // Otherwise, use the user's server URL
  if (index >= 0) {
    ABSApi api = ABSApi(
        dio: Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 3),
            receiveTimeout: const Duration(seconds: 20),
            baseUrl: users[index].server?.url ?? r'http://localhost:3000',
          ),
        ),
        interceptors: interceptors,
        basePathOverride: users[index].server?.url);

    final token = users[index].token;

    // Set up Bearer authentication
    if (token != null) {
      api.setBearerAuth('BearerAuth', token);
    }

    return api;
  }

  return null;
});

void setBasePathOverride(Ref ref, String? newBasePath) {
  ref.read(basePathOverrideProvider.notifier).state = newBasePath;
}

void resetBasePathOverride(WidgetRef ref) {
  ref.read(basePathOverrideProvider.notifier).state = null;
}
