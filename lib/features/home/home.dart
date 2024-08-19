import 'package:abs_flutter/features/home/components/library_chip.dart';
import 'package:abs_flutter/features/home/components/user_badge.dart';
import 'package:abs_flutter/features/home/components/user_switcher.dart';
import 'package:abs_flutter/features/library/library_items_wrapper.dart';
import 'package:abs_flutter/features/library/notch/notch_content.dart';
import 'package:abs_flutter/features/library/series/series_view.dart';
import 'package:abs_flutter/features/library/shelf_items.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/download_info_button.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings =
        ref.watch(specificKeysSettingsProvider([Constants.ACCOUNT_SWITCHER]));
    final selectedUserIndex = ref.watch(selectedUserProvider);
    final users = ref.read(usersProvider);

    if (users.isEmpty || selectedUserIndex < 0) {
      Future.microtask(() => context.go('/init'));
      return Scaffold(body: ErrorText(S.of(context).waitTillRedirect));
    }

    final currentIndex = useState(1);
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Row(
          children: [
            const UserBadge(),
            if (MediaQuery.of(context).size.width > 450) ...[
              Flexible(
                fit: FlexFit.tight,
                child: PlatformText(
                  'Audiobookshelfy',
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
            if (MediaQuery.of(context).size.width >= 900 &&
                currentIndex.value == 0) ...[
              const Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Center(child: NotchContent())),
                  ))
            ]
          ],
        ),
        trailingActions: [
          const LibraryChip(),
          if ((settings[Constants.ACCOUNT_SWITCHER] ?? false) == true)
            const UserSwitcher(),
          Tooltip(
            message: S.of(context).stats,
            child: IconButton(
                onPressed: () => {context.push('/stats')},
                icon: const Icon(Icons.pie_chart_outline_rounded)),
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
        itemChanged: (index) {
          currentIndex.value = index;
        },
        bodyBuilder: (context, index) {
          if (index == 0) {
            return const SafeArea(child: LibraryItemsWrapper());
          } else if (index == 1) {
            return const SafeArea(child: ShelfItems());
          } else {
            return const SafeArea(child: SeriesView());
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(context.platformIcons.home),
            label: S.of(context).library,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shelves),
            label: S.of(context).personalizedLibrary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: S.of(context).series,
          ),
        ],
      ),
    );
  }
}
