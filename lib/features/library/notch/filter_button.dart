import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/filter_provider.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterButton extends ConsumerWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    final sort = ref.watch(libraryItemSearchProvider);
    return filter.when(
      data: (data) {
        IconData icon = Icons.filter_alt_off_outlined;
        if (sort.filterKey == null || sort.filterKey!.isEmpty) {
          icon = Icons.filter_alt_outlined;
        }
        return _buildFilterButton(icon,
            data: data?.data, context: context, ref: ref);
      },
      error: (e, s) => _buildFilterButton(Icons.filter_alt_off_outlined),
      loading: () => _buildFilterButton(Icons.filter_alt_off_outlined),
    );
  }

  Widget _buildFilterButton(IconData icon,
      {LibraryFilterData? data, BuildContext? context, WidgetRef? ref}) {
    return Tooltip(
      message: context != null ? S.of(context).filter : S.current.filter,
      child: PlatformIconButton(
        onPressed: () {
          if (data != null) {
            final sortNotifier = ref!.read(libraryItemSearchProvider.notifier);
            if (sortNotifier.state.filterKey != null &&
                sortNotifier.state.filterKey!.isNotEmpty) {
              sortNotifier.state =
                  sortNotifier.state.copyWith(filter: null, filterKey: null);
            } else {
              _showFilterDialog(context!, data, ref);
            }
          }
        },
        icon: Icon(icon),
      ),
    );
  }

  void _showFilterDialog(
      BuildContext context, LibraryFilterData data, WidgetRef ref) {
    final Map<String, String> filterLabels = {
      "authors": S.of(context).authors,
      "genres": S.of(context).genres,
      "tags": S.of(context).tags,
      "narrators": S.of(context).narrators,
      "series": S.of(context).series,
      "languages": S.of(context).languages,
      "progress": S.of(context).progress,
      "feed-open": S.of(context).feedOpen,
      "share-open": S.of(context).shareOpen,
    };

    showPlatformDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildFilterDialog(context, filterLabels, data, ref);
      },
    );
  }

  Widget _buildFilterDialog(BuildContext context,
      Map<String, String> filterLabels, LibraryFilterData data, WidgetRef ref,
      [String? selectedKey]) {
    final sortNotifier = ref.read(libraryItemSearchProvider.notifier);
    final List<String> noValueFilters = ['feed-open', 'share-open'];
    late final List<Widget> items;

    if (selectedKey == null) {
      items = filterLabels.keys.map((key) {
        return Hero(
          tag: key,
          child: ListTile(
            title: Text(filterLabels[key]!),
            trailing: Icon(PlatformIcons(context).forward),
            onTap: () {
              Navigator.of(context).pop();
              if (!noValueFilters.contains(key)) {
                _animateToSubview(context, key, filterLabels, data, ref);
              } else {
                sortNotifier.state = sortNotifier.state.copyWith(
                  filter: null,
                  filterKey: key,
                );
              }
            },
          ),
        );
      }).toList();
    } else {
      Map<String, String> itemMap = _getItemsForKey(data, selectedKey);
      items = itemMap.entries.map((entry) {
        String item = entry.value;
        return Hero(
          tag: item,
          child: ListTile(
            title: PlatformText(item),
            onTap: () {
              sortNotifier.state = sortNotifier.state.copyWith(
                filter: entry.key,
                filterKey: selectedKey,
              );
              Navigator.pop(context);
            },
          ),
        );
      }).toList();
    }

    return WillPopScope(
      onWillPop: () async {
        if (selectedKey != null) {
          Navigator.pop(context);
          _animateToSubview(context, null, filterLabels, data, ref);
          return false;
        }
        return true;
      },
      child: PlatformAlertDialog(
        title: Text(selectedKey == null
            ? S.of(context).filter
            : filterLabels[selectedKey]!),
        actions: [
          if (selectedKey != null)
            PlatformDialogAction(
              child: PlatformText(S.of(context).back),
              onPressed: () {
                Navigator.pop(context);
                _animateToSubview(context, null, filterLabels, data, ref);
              },
            ),
          PlatformDialogAction(
            child: PlatformText(S.of(context).cancel),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: items,
          ),
        ),
      ),
    );
  }

  void _animateToSubview(BuildContext context, String? key,
      Map<String, String> filterLabels, LibraryFilterData data, WidgetRef ref) {
    showPlatformDialog(
      context: context,
      builder: (BuildContext context) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          child: _buildFilterDialog(context, filterLabels, data, ref, key),
        );
      },
    );
  }

  Map<String, String> _getItemsForKey(LibraryFilterData data, String key) {
    Map<String, String> items = {};
    switch (key) {
      case 'authors':
        data.authors?.forEach((author) {
          items[author.id.toString()] = author.name ?? '';
        });
        break;
      case 'genres':
        data.genres?.forEach((genre) {
          items[genre.toString()] = genre;
        });
        break;
      case 'tags':
        data.tags?.forEach((tag) {
          items[tag.toString()] = tag;
        });
        break;
      case 'narrators':
        data.narrators?.forEach((narrator) {
          items[narrator.toString()] = narrator;
        });
        break;
      case 'series':
        data.series?.forEach((series) {
          items[series.id.toString()] = '${series.name} (${series.numBooks})';
        });
        break;
      case 'languages':
        data.languages?.forEach((language) {
          items[language.toString()] = language;
        });
        break;
      case 'progress':
        items['finished'] = S.current.finished;
        items['not-started'] = S.current.notStarted;
        items['not-finished'] = S.current.notFinished;
        items['in-progress'] = S.current.inProgress;
      default:
        return {};
    }
    return items;
  }
}
