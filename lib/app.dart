import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'globals.dart';
import 'models/user.dart';

class AbsApp extends ConsumerWidget {
  const AbsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return PlatformApp.router(
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        S.delegate
      ],
      material: (_, __) => MaterialAppRouterData(
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        themeMode: _getThemeMode(user),
      ),
      supportedLocales: const <Locale>[
        Locale('en', ''),
      ],
      showPerformanceOverlay: false,
      debugShowCheckedModeBanner: false,
      title: appTitle,
      routerConfig: router,
    );
  }

  _getThemeMode(User? user) {
    if (user != null && user.setting != null) {
      return user.setting!.settings['isDarkMode'] ? ThemeMode.dark : ThemeMode.light;
    }
    return ThemeMode.system;
  }
}