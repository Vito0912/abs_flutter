// globals.dart

import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/setting_cache_provider.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sembast/sembast.dart';
import 'package:shared_preferences/shared_preferences.dart';

const appTitle = 'Buchable';
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
late ProviderContainer provContainer;

final PlatformTabController tabController =
    PlatformTabController(initialIndex: 1);

const double maxWidth = 800;
const String mediaPlayer = 'just_audio /w audio_service @ abs_flutter';

final Map<String, dynamic> defaultSettings = {
  Constants.DARK_MODE: true,
  Constants.AMOLED_MODE: true,
  Constants.ACCOUNT_SWITCHER: true,
  Constants.STOP_PLAYER_WHILE_SYNCING: true,
  Constants.JUMP_TO_LAST_POSITION: true,
  Constants.COLLAPSE_SERIES: false,
  Constants.FAST_FORWARD_SECONDS: 10.0,
  Constants.REWIND_SECONDS: 10.0,
  Constants.PROGRESS_AS_CHAPTERS: false,
  Constants.DOWNLOADS_ONLY_VIA_WIFI: true,
  Constants.SYNC_INTERVAL: 10.0,
  Constants.SYNC_ONLY_VIA_WIFI: false,
  Constants.SHAKE_RESET_TIMER: false,
  Constants.LOCK_SEEKING_NOTIFICATION: false,
  Constants.LANGUAGE: 'en',
  Constants.CACHING_ENABLED: true,
  Constants.AGGRESSIVE_CACHING: true,
  Constants.BOOST_LOADING: true,
  Constants.LOGGING_ENABLED: true,
  Constants.WINDOWS_MINIMIZE_TO_TRAY: false,
  Constants.DOWNLOAD_PATH: null,
  Constants.SORT_SERIES_ASC: false,
};

final Map<String, String> supportedLocales = {
  'en': 'English',
  'de': 'Deutsch',
  'nb': 'Norsk Bokmål',
  'zh': '中文',
  'pt': 'Português',
  'fr': 'Français',
};

bool cachingEnabled = true;
bool aggressiveCaching = true;
bool boostLoading = false;

late UserSharedPreferences userSharedPreferences;
