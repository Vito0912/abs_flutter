
import 'package:abs_flutter/features/home/components/library_chip.dart';
import 'package:abs_flutter/features/home/components/user_badge.dart';
import 'package:abs_flutter/features/home/components/user_switcher.dart';
import 'package:abs_flutter/features/library/library_items_wrapper.dart';
import 'package:abs_flutter/features/library/series/series_view.dart';
import 'package:abs_flutter/features/library/shelf_items.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'components/download_info_button.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(selectedUserProvider);
    final users = ref.watch(usersProvider);

    if (users.isEmpty) {
      Future.microtask(() => context.go('/init'));
    }

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const UserBadge(),
        trailingActions: [
          const LibraryChip(),
          if (users.length > 1 &&
              users[user].setting != null &&
              users[user].setting!.settings['showAccountSwitcher'] == true)
            const UserSwitcher(),
          Tooltip(
            message: S.of(context).stats,
            child: IconButton(
                onPressed: () => {
                  context.push('/stats')
                },
                icon: const Icon(Icons.pie_chart_outline_rounded)
            ),
          ),
          Tooltip(
              message: S.of(context).currentDownloads,
              child: const DownloadInfoButton()),
          Tooltip(
            message: S.of(context).moreOptions,
            child: PlatformPopupMenu(
              options: [
                PopupMenuOption(
                  label: S.of(context).settings,
                  onTap: (PopupMenuOption option) {
                    context.push('/settings');
                  },
                ),
                PopupMenuOption(
                  label: S.of(context).downloads,
                  onTap: (PopupMenuOption option) {
                    context.push('/downloads');
                  },
                ),
                PopupMenuOption(
                  label: S.of(context).offlineProgress,
                  onTap: (PopupMenuOption option) {
                    context.push('/offlineProgress');
                  },
                ),
                PopupMenuOption(
                    label: S.of(context).addUser,
                    onTap: (PopupMenuOption option) {
                      context.push('/select-server');
                    })
              ],
              icon: Icon(PlatformIcons(context).ellipsis),
            ),
          )
        ],
      ),
      body: PlatformTabScaffold(
        navBarHeight: 64,
        tabController: tabController,
        bodyBuilder: (context, index) {
          if (index == 0) {
            return const LibraryItemsWrapper();
          } else if (index == 1) {
            return const ShelfItems();
          } else {
            return const SeriesView();
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(context.platformIcons.home),
            label: S.of(context).library,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shelves),
            label: S.of(context).personalizedLibrary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: S.of(context).series,
          ),
        ],
      ),
    );
  }
}
