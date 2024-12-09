import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/app.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/abs_audio_handler.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/setting_cache_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:just_audio_media_kit/just_audio_media_kit.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Secure storage - sensitive data
  AndroidOptions getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  initializeDateFormatting();

  final container = ProviderContainer();
  provContainer = container;

  if (!kIsWeb) {
    appDir = Platform.isLinux 
        ? '${path.join('/home', Platform.environment['USER']!, '.abs_flutter')}'
        : '${(await getApplicationDocumentsDirectory()).path.replaceAll('\\', '/')}/abs_flutter';

    await Directory(appDir).create(recursive: true);

    db = await databaseFactoryIo.openDatabase(join(appDir, 'cache.db'));
  } else {
    var factory = databaseFactoryWeb;
    db = await factory.openDatabase('test');
  }

  secureStorage = FlutterSecureStorage(aOptions: getAndroidOptions());
  sp = await SharedPreferences.getInstance();

  final String? userString = await secureStorage.read(key: 'users');
  final List<User>? users = userString != null && userString.isNotEmpty
      ? (jsonDecode(userString) as List).map((e) => User.fromJson(e)).toList()
      : null;
  _ensureDefaultSettings(users);
  final int currentUser = sp.getInt('currentUser') ?? -1;
  final int currentLibrary = sp.getInt('currentLibrary') ?? 0;

  final userNotifier = container.read(usersProvider.notifier);
  final selectedUserNotifier = container.read(selectedUserProvider.notifier);
  final selectedLibraryNotifier =
      container.read(selectedLibraryProvider.notifier);
  final audioService = container.read(playerProvider.notifier);

  final AbsAudioHandler audioService0 = await AudioService.init(
    builder: () => AbsAudioHandler(container),
    config: const AudioServiceConfig(
        androidNotificationChannelId: 'de.vito.abs_flutter.playback',
        androidNotificationChannelDescription:
            'Needed to control audio from lock screen',
        androidNotificationChannelName: 'ABSPlayback',
        preloadArtwork: true,
        androidNotificationOngoing: false,
        androidStopForegroundOnPause: false,
        androidNotificationIcon: 'mipmap/ic_media_monochrome'),
  );

  audioService.setAudioService(audioService0);

  JustAudioMediaKit.ensureInitialized(windows: false);

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  appName = packageInfo.appName;
  packageName = packageInfo.packageName;
  version = packageInfo.version;
  buildNumber = packageInfo.buildNumber;
  deviceName = await _getDeviceModel();
  osVersion = await _getOSModel();

  if (users != null && userNotifier != null) {
    userNotifier.setUsers(users);
  }
  if (currentUser < 0 && users != null && users.length > 0) {
    selectedUserNotifier.state = 0;
  } else {
    selectedUserNotifier.state = currentUser;
  }
  if (users == null || users.isEmpty) {
    selectedUserNotifier.state = -1;
  }

  selectedLibraryNotifier.state = currentLibrary;

  log((users?.length ?? 0).toString(), name: 'init @ number of users');

  userSharedPreferences = UserSharedPreferences(container);

  await Settings.init(cacheProvider: userSharedPreferences);

  await _runPlatformSpecificCode();

  runApp(UncontrolledProviderScope(
    container: container,
    child: const AbsApp(),
  ));
}

Future<void> _runPlatformSpecificCode() async {
  if (kIsWeb) return;
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

      WindowOptions windowOptions = WindowOptions(
        minimumSize: const Size(400, 400),
        title: appTitle,
        skipTaskbar:
            userSharedPreferences.getBool(Constants.WINDOWS_MINIMIZE_TO_TRAY) ??
                false,
      );

      await trayManager.setIcon('assets/images/logo/logo_blue_big_abs.ico');

      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
      break;
    default:
      break;
  }
}

Future<String> _getDeviceModel() async {
  if (kIsWeb) return 'Browser';
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
      if (kIsWeb) {
        WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
        return webBrowserInfo.userAgent ?? 'unknown web browser';
      }
      return 'Unknown Device Type';
  }
}

Future<String> _getOSModel() async {
  if (kIsWeb) return 'Browser';
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
