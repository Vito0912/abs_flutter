import 'dart:developer';
import 'dart:io';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'globals.dart';
import 'models/user.dart';

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
    // Closed window on Windows
    if (Platform.isWindows && state == AppLifecycleState.hidden) {
      ref.read(sessionProvider.notifier).closeOpenSession();
    } else if (Platform.isAndroid && state == AppLifecycleState.detached) {
      log('Detached', name: 'AppLifecycleState');
      ref.read(sessionProvider.notifier).closeOpenSession();
    } else if (state == AppLifecycleState.detached) {
      ref.read(sessionProvider.notifier).closeOpenSession();
    }
    // TODO: Find behaviours for other platforms
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(currentUserProvider);

    return PlatformApp.router(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      material: (_, __) => MaterialAppRouterData(
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.dark().copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        themeMode: _getThemeMode(user),
      ),
      supportedLocales:
          supportedLocales.entries.map((e) => Locale(e.key, '')).toList(),
      locale: Locale(user?.setting?.settings['language'] ?? 'en'),
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      title: appTitle,
      routerConfig: router,
    );
  }

  _getThemeMode(User? user) {
    if (user != null && user.setting != null) {
      return user.setting!.settings['isDarkMode']
          ? ThemeMode.dark
          : ThemeMode.light;
    }
    return ThemeMode.system;
  }
}
