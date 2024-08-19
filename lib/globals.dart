// globals.dart

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sembast/sembast.dart';
import 'package:shared_preferences/shared_preferences.dart';

const appTitle = 'Audiobookshelfly';
late final String appName;
late final String packageName;
late final String version;
late final String buildNumber;
late final String deviceName;
late final String osVersion;

late final FlutterSecureStorage secureStorage;
late final SharedPreferences sp;
late final String appDir;
late Database db;

final PlatformTabController tabController =
    PlatformTabController(initialIndex: 1);

double maxWidth = 800;
const String mediaPlayer = 'just_audio /w audio_service @ abs_flutter';

final Map<String, dynamic> defaultSettings = {
  'isDarkMode': true,
  'showAccountSwitcher': true,
  'stopPlayerWhileSyncing': true,
  'jumpToLastPosition': true,
  'markItemsFinishedAfter': 0.0,
  'collapseSeries': false,
  'fastForwardSeconds': 10,
  'rewindSeconds': 10,
  'progressAsChapters': false,
  'downloadsOnlyViaWifi': true,
  'syncInterval': 10,
  'syncOnlyViaWifi': false,
  'shakeResetTimer': false,
  "lockSeekingNotification": false,
  "language": "en"
};

final Map<String, String> supportedLocales = {
  'en': 'English',
  'de': 'Deutsch',
  'nb': 'Norsk Bokmål'
};
