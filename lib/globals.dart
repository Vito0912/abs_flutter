// globals.dart

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const appTitle = 'ABS Flutter';
late final String appName;
late final String packageName;
late final String version;
late final String buildNumber;
late final String deviceName;
late final String osVersion;

late final FlutterSecureStorage secureStorage;
late final SharedPreferences sp;

double maxWidth = 800;
const String mediaPlayer = 'just_audio /w audio_service @ abs_flutter';

final Map<String, dynamic> defaultSettings = {
  'isDarkMode': true,
  'showAccountSwitcher': true,
  'stopPlayerWhileSyncing': true,
  'markItemsFinishedAfter': 0.0,
  'collapseSeries': false,
  'fastForwardSeconds': 10,
  'rewindSeconds': 10,
  'progressAsChapters': false,
};