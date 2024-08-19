// GoRouter configuration
import 'package:abs_flutter/features/auth/server_selection.dart';
import 'package:abs_flutter/features/download/download_library.dart';
import 'package:abs_flutter/features/download/download_page.dart';
import 'package:abs_flutter/features/home/home.dart';
import 'package:abs_flutter/features/library/item/item_view.dart';
import 'package:abs_flutter/features/logging/log_view.dart';
import 'package:abs_flutter/features/player/play_history_page.dart';
import 'package:abs_flutter/features/player/player_page.dart';
import 'package:abs_flutter/features/player/player_wrapper.dart';
import 'package:abs_flutter/features/progress/progress_page.dart';
import 'package:abs_flutter/features/settings/setting_wrapper.dart';
import 'package:abs_flutter/features/stats/stats_wrapper.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/player',
        builder: (context, state) {
          return const PlayerPage();
        }),
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
            builder: (context, state) => const ServerSelection(
              initAttempted: true,
            ),
          ),
          GoRoute(
            path: '/stats',
            builder: (context, state) => const StatsWrapper(),
          ),
          GoRoute(
            path: '/logs',
            builder: (context, state) => const LogView(),
          ),
          GoRoute(
              path: '/',
              builder: (context, state) => const Home(),
              routes: [
                GoRoute(
                    path: 'view/:mediaType/:itemId',
                    builder: (context, viewState) {
                      assert(viewState.pathParameters['mediaType'] == 'book' ||
                          viewState.pathParameters['mediaType'] == 'podcast');
                      return ItemView(
                          itemId: viewState.pathParameters['itemId']!,
                          mediaType: viewState.pathParameters['mediaType']!);
                    }),
                GoRoute(
                    path: 'settings',
                    builder: (context, state) => const SettingsWrapper()),
                GoRoute(
                    path: 'downloads',
                    builder: (context, state) => const DownloadPage()),
                GoRoute(
                    path: 'downloads/:libraryId',
                    builder: (context, state) => DownloadLibrary(
                          libraryId: state.pathParameters['libraryId'],
                        )),
                GoRoute(
                    path: 'downloads/:libraryId/:libraryName',
                    builder: (context, state) => DownloadLibrary(
                          libraryId: state.pathParameters['libraryId'],
                          libraryName: state.pathParameters['libraryName'],
                        )),
                GoRoute(
                    path: 'offlineProgress',
                    builder: (context, state) => const ProgressPage()),
              ]),
          GoRoute(
              path: '/history/:itemId',
              builder: (context, state) {
                if (state.pathParameters['itemId'] == null) {
                  context.go('/');
                }
                return PlayHistoryPage(
                  itemId: state.pathParameters['itemId']!,
                );
              }),
        ]),
  ],
);
