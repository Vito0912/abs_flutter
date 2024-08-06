// GoRouter configuration
import 'package:abs_flutter/features/auth/server_selection.dart';
import 'package:abs_flutter/features/home/home.dart';
import 'package:abs_flutter/features/library/item/item_view.dart';
import 'package:abs_flutter/features/player/player_page.dart';
import 'package:abs_flutter/features/player/player_wrapper.dart';
import 'package:abs_flutter/features/settings/setting_wrapper.dart';
import 'package:abs_flutter/features/stats/stats_wrapper.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/player',
        builder: (context, state) {
          return const PlayerPage();
        }
    ),
    ShellRoute(
        builder: (context, state, child) {
          return PlayerWrapper(child: child);
        },
        routes: [
          GoRoute(
            path: '/select-server',
            builder: (context, state) => const ServerSelection(),
          ),
          GoRoute(
            path: '/init',
            builder: (context, state) => const ServerSelection(initAttempted: true,),
          ),
          GoRoute(
            path: '/stats',
            builder: (context, state) => const StatsWrapper(),
          ),
          GoRoute(
              path: '/',
              builder: (context, state) => const Home(),
              routes: [
                GoRoute(
                    path: 'view/:mediaType/:itemId',
                    builder: (context, viewState) {
                      // mediaType must be either book or podcast
                      assert(viewState.pathParameters['mediaType'] == 'book' ||
                          viewState.pathParameters['mediaType'] == 'podcast');
                      return ItemView(
                          itemId: viewState.pathParameters['itemId']!,
                          mediaType: viewState.pathParameters['mediaType']!);
                    }),
                GoRoute(
                    path: 'settings',
                    builder: (context, state) => const SettingsWrapper()),
              ]),
        ]),
  ],
);
