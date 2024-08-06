import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/app.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/abs_audio_handler.dart';
import 'package:abs_flutter/util/setting_cache_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Secure storage - sensitive data
  AndroidOptions getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  initializeDateFormatting();

  secureStorage = FlutterSecureStorage(aOptions: getAndroidOptions());
  sp = await SharedPreferences.getInstance();

  final String? userString = await secureStorage.read(key: 'users');
  final List<User>? users = userString != null && userString.isNotEmpty
      ? (jsonDecode(userString) as List).map((e) => User.fromJson(e)).toList()
      : null;
  _ensureDefaultSettings(users);
  final int currentUser = sp.getInt('currentUser') ?? -1;
  final int currentLibrary = sp.getInt('currentLibrary') ?? 0;

  final container = ProviderContainer();
  final userNotifier = container.read(usersProvider.notifier);
  final selectedUserNotifier = container.read(selectedUserProvider.notifier);
  final selectedLibraryNotifier = container.read(selectedLibraryProvider.notifier);
  final audioService = container.read(playerProvider.notifier);

  final AbsAudioHandler _audioService = await AudioService.init(
    builder: () => AbsAudioHandler(container),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'de.vito.abs_flutter.playback',
      androidNotificationChannelName: 'Audiobookshelf Playback',
    ),
  );

  audioService.setAudioService(_audioService);

  JustAudioMediaKit.ensureInitialized(
    windows: false
  );

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  appName = packageInfo.appName;
  packageName = packageInfo.packageName;
  version = packageInfo.version;
  buildNumber = packageInfo.buildNumber;
  deviceName = await _getDeviceModel();
  osVersion = await _getOSModel();

  if (users != null) {
    userNotifier.setUsers(users);
  }
  selectedUserNotifier.state = currentUser;
  selectedLibraryNotifier.state = currentLibrary;

  print(users?.length ?? 0);

  await Settings.init(cacheProvider: UserSharedPreferences(container));

  await _runPlatformSpecificCode();

  runApp(UncontrolledProviderScope(
    container: container,
    child: const AbsApp(),
  ));
}

Future<void> _runPlatformSpecificCode() async {
  switch (Platform.operatingSystem) {
    case 'android':
      break;
    case 'ios':
      break;
    case 'linux':
      break;
    case 'macos':
      break;
    case 'windows':
      await windowManager.ensureInitialized();

      WindowOptions windowOptions = const WindowOptions(
        minimumSize: Size(400, 400),
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
      break;
    default:
      if(kIsWeb) {
        break;
      }
  }
}

Future<String> _getDeviceModel() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  switch (Platform.operatingSystem) {
    case 'android':
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.model;
    case 'ios':
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.utsname.machine;
    case 'linux':
      LinuxDeviceInfo linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.name;
    case 'macos':
      MacOsDeviceInfo macOsInfo = await deviceInfo.macOsInfo;
      return macOsInfo.model;
    case 'windows':
      WindowsDeviceInfo windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.productName;
    default:
      if(kIsWeb) {
        WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
        return webBrowserInfo.userAgent?? 'unknown web browser';
      }
      return 'Unknown Device Type';
  }
}

Future<String> _getOSModel() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  switch (Platform.operatingSystem) {
    case 'android':
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.version.sdkInt.toString();
    case 'ios':
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.systemVersion;
    case 'linux':
      LinuxDeviceInfo linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.version ?? 'unknown';
    case 'macos':
      MacOsDeviceInfo macOsInfo = await deviceInfo.macOsInfo;
      return '${macOsInfo.majorVersion}.${macOsInfo.minorVersion}.${macOsInfo.patchVersion}';
    case 'windows':
      WindowsDeviceInfo windowsInfo = await deviceInfo.windowsInfo;
      return '${windowsInfo.majorVersion}.${windowsInfo.minorVersion} (${windowsInfo.buildNumber})';
    default:
      return 'Unknown OS Type';
  }
}

void _ensureDefaultSettings(List<User>? users) {
  if (users != null) {
    for (var user in users) {
      defaultSettings.forEach((key, value) {
        user.setting?.settings.putIfAbsent(key, () => value);
      });
    }
  }
}

