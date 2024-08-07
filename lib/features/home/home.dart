import 'dart:developer';

import 'package:abs_flutter/features/home/components/library_chip.dart';
import 'package:abs_flutter/features/home/components/user_badge.dart';
import 'package:abs_flutter/features/home/components/user_switcher.dart';
import 'package:abs_flutter/features/library/library_items.dart';
import 'package:abs_flutter/features/library/library_items_wrapper.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/sleep_timer_provider.dart';
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
      Future.microtask(() => context.push('/init'));
    }

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Row(
          children: [
            UserBadge(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('ABS'),
            ),
          ],
        ),
        trailingActions: [
          const LibraryChip(),
          if (users.length > 1 &&
              users[user].setting != null &&
              users[user].setting!.settings['showAccountSwitcher'] == true)
            const UserSwitcher(),
          IconButton(
              onPressed: () => {
                context.push('/stats')
              },
              icon: Icon(Icons.pie_chart_outline_rounded)
          ),
          const DownloadInfoButton(),
          PlatformPopupMenu(
            options: [
              PopupMenuOption(
                label: S.of(context).settings,
                onTap: (PopupMenuOption option) {
                  context.push('/settings');
                },
              ),
              PopupMenuOption(
                  label: S.of(context).addUser,
                  onTap: (PopupMenuOption option) {
                    context.push('/select-server');
                  })
            ],
            icon: Icon(PlatformIcons(context).ellipsis),
          )
        ],
      ),
      body: PlatformTabScaffold(
        tabController: PlatformTabController(
          initialIndex: 0,
        ),
        bodyBuilder: (context, index) {
          if (index == 0) {
            return const LibraryItemsWrapper();
          } else {
            return const Center(child: Text('Not Implemented'));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(context.platformIcons.home),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(context.platformIcons.home),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
