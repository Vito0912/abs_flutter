import 'package:abs_flutter/features/home/components/library_chip.dart';
import 'package:abs_flutter/features/home/components/user_badge.dart';
import 'package:abs_flutter/features/library/library_items_wrapper.dart';
import 'package:abs_flutter/features/library/list_items.dart';
import 'package:abs_flutter/features/library/notch/notch_content.dart';
import 'package:abs_flutter/features/library/series/series_view_wrapper.dart';
import 'package:abs_flutter/features/library/shelf_items.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/library_sort.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:collection/collection.dart';
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
    final currentLibrary = ref.watch(currentLibraryProvider);

    if (users.isEmpty || selectedUserIndex < 0) {
      Future.microtask(() => context.go('/init'));
      return Scaffold(body: ErrorText(S.of(context).waitTillRedirect));
    }

    if (currentLibrary != null &&
        currentLibrary.mediaType != 'book' &&
        tabController.index(context) > 1) {
      tabController.setIndex(context, 1);
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
                  'Buchable',
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
            if (MediaQuery.of(context).size.width >= 900 &&
                (currentIndex.value == 0 || currentIndex.value == 2)) ...[
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Center(
                            child: NotchContent(
                          disableFilter: currentIndex.value == 2,
                          sortKeys:
                              currentIndex.value == 2 ? seriesSortKeys : null,
                        ))),
                  ))
            ]
          ],
        ),
        trailingActions: [
          const LibraryChip(),
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
                  label: S.of(context).playlists,
                  onTap: (PopupMenuOption option) {
                    context.push('/list-view');
                  },
                ),
                PopupMenuOption(
                    label: S.of(context).addUser,
                    onTap: (PopupMenuOption option) {
                      context.push('/select-server');
                    }),
                PopupMenuOption(
                    label: S.of(context).debugLogs,
                    onTap: (PopupMenuOption option) {
                      context.push('/logs');
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
          final sortList = ref.read(libraryItemSearchProvider);
          final validIndexes = [0, 2];
          if (index != sortList.state.index && validIndexes.contains(index)) {
            LibrarySort? previousSort = sortList.state.previous
                ?.firstWhereOrNull((LibrarySort sort) => sort.index == index);

            ref.read(libraryItemSearchProvider.notifier).updateState(
                ref.read(libraryItemSearchProvider.notifier).state.copyWith(
                    index: index,
                    search: previousSort?.search ?? '',
                    filter: previousSort?.filter,
                    filterKey: previousSort?.filterKey,
                    sort: previousSort?.sort ??
                        ((index == 2 && currentLibrary?.mediaType == 'book')
                            ? 'name'
                            : null),
                    desc: previousSort?.desc ?? 0,
                    previous: [
                      ...?sortList.state.previous?.where((LibrarySort sort) {
                        return sort.index != index;
                      }).map((LibrarySort sort) {
                        return sort.copyWith(previous: null);
                      }),
                      sortList.state.copyWith(previous: null)
                    ]),
                notify: false);
          }
          currentIndex.value = index;
        },
        bodyBuilder: (context, index) {
          if (index == 0) {
            return const SafeArea(child: LibraryItemsWrapper());
          } else if (index == 1) {
            return const SafeArea(child: ShelfItems());
          } else if (index == 2 && currentLibrary?.mediaType == 'book') {
            return const SafeArea(child: SeriesViewWrapper());
          } else if (index == 3 && currentLibrary?.mediaType == 'book' ||
              index == 2) {
            return SafeArea(child: TabBarWidget());
          } else {
            return const SafeArea(child: SeriesViewWrapper());
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              context.platformIcons.home,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: S.of(context).library,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shelves,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            label: S.of(context).personalizedLibrary,
          ),
          if (currentLibrary?.mediaType == 'book')
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_books_outlined,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              label: S.of(context).series,
            ),
        ],
        tabsBackgroundColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}
