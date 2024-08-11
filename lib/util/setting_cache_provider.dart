import 'dart:developer';

import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class UserSharedPreferences extends CacheProvider {
  final ProviderContainer _container;
  int? _selectedUserIndex;
  List<User>? _users;

  UserSharedPreferences(this._container);

  @override
  bool containsKey(String key) {
    return true;
  }

  @override
  bool? getBool(String key, {bool? defaultValue}) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];

      if (user == null || user.setting == null) {
        return defaultValue;
      } else {
        return user.setting!.settings[key] as bool?;
      }
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  double? getDouble(String key, {double? defaultValue}) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return defaultValue;
      } else {
        return user.setting!.settings[key] as double?;
      }
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  int? getInt(String key, {int? defaultValue}) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return defaultValue;
      } else {
        return user.setting!.settings[key] as int?;
      }
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  Set getKeys() {
    // Get all keys
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return {};
      } else {
        return user.setting!.settings.keys.toSet();
      }
    } catch (_) {
      return {};
    }
  }

  @override
  String? getString(String key, {String? defaultValue}) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return defaultValue;
      } else {
        return user.setting!.settings[key] as String?;
      }
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  T? getValue<T>(String key, {T? defaultValue}) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return defaultValue;
      } else {
        return user.setting!.settings[key] as T?;
      }
    } catch (_) {
      return defaultValue;
    }
  }

  @override
  Future<void> init() {
    _selectedUserIndex = _container.read(selectedUserProvider);
    _container.listen<int?>(selectedUserProvider, (previousUser, newUser) {
      _selectedUserIndex = newUser;
    });

    _users = _container.read(usersProvider);
    _container.listen<List<User>>(usersProvider, (previousUsers, newUsers) {
      _users = newUsers;
    });
    return Future.value();
  }

  @override
  Future<void> remove(String key) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: user.setting!.settings..remove(key),
        );
      }
    } catch (_) {}
    return Future.value();
  }

  @override
  Future<void> removeAll() {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: {},
        );
      }
    } catch (_) {}
    return Future.value();
  }

  @override
  Future<void> setString(String key, String? value) async {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: {...user.setting!.settings, key: value},
        );
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value();
  }

  @override
  Future<void> setBool(String key, bool? value) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: {...user.setting!.settings, key: value},
        );
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value();
  }

  @override
  Future<void> setDouble(String key, double? value) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: {...user.setting!.settings, key: value},
        );
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value();
  }

  @override
  Future<void> setInt(String key, int? value) {
    try {
      User? user = _users?[_selectedUserIndex ?? 0];
      if (user == null || user.setting == null) {
        return Future.value();
      } else {
        user.setting = user.setting!.copyWith(
          settings: {...user.setting!.settings, key: value},
        );
      }
    } catch (e) {
      log(e.toString());
    }
    return Future.value();
  }

  @override
  Future<void> setObject<T>(String key, T? value) async {
    try {
      // Get the current user notifier
      CurrentUserNotifier currentUserNotifier =
          _container.read(currentUserProvider.notifier);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        currentUserNotifier.updateUserSettings(key, value,
            index: _selectedUserIndex);
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
