import 'dart:io';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/bookmark_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/router.dart';
import 'package:abs_flutter/util/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'globals.dart';

class AbsApp extends ConsumerStatefulWidget {
  const AbsApp({super.key});

  @override
  _AbsAppState createState() => _AbsAppState();
}

class _AbsAppState extends ConsumerState<AbsApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!kIsWeb) {
      // Closed window on Windows
      if (Platform.isWindows && state == AppLifecycleState.hidden) {
        ref.read(sessionProvider.notifier).closeOpenSession();
      } else if (Platform.isAndroid && state == AppLifecycleState.detached) {
        log('Detached', name: 'AppLifecycleState');
        ref.read(sessionProvider.notifier).closeOpenSession();
      } else if (state == AppLifecycleState.detached) {
        ref.read(sessionProvider.notifier).closeOpenSession();
      }
    } else {
      // Web has no way to find if terminated. So not able to close sessions on close
    }
    // TODO: Find behaviours for other platforms
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(specificKeysSettingsProvider(
        [Constants.DARK_MODE, Constants.LANGUAGE, Constants.AMOLED_MODE]));
    final userIndex = ref.watch(selectedUserProvider);
    print('User Index: $userIndex');
    //TODO: Two calls. Unify me api calls
    if (userIndex >= 0) {
      final progressProv = ref.read(progressProvider);
      progressProv.getAllProgress();
      ref.read(bookmarkProvider).fetchAllBookmarks();
    }

    return PlatformApp.router(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      material: (_, __) => MaterialAppRouterData(
        theme: lightModeTheme,
        darkTheme:
            settings[Constants.AMOLED_MODE] ? amoledTheme : darkModeTheme,
        themeMode: _getThemeMode(settings[Constants.DARK_MODE]),
      ),
      supportedLocales:
          supportedLocales.entries.map((e) => Locale(e.key, '')).toList(),
      locale: Locale(settings[Constants.LANGUAGE] ?? 'en'),
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      title: appTitle,
      routerConfig: router,
    );
  }

  _getThemeMode(bool? darkMode) {
    if (darkMode != null) {
      return darkMode ? ThemeMode.dark : ThemeMode.light;
    }
    return ThemeMode.system;
  }
}
