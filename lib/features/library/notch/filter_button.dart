import 'dart:math';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/filter_provider.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterButton extends HookConsumerWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    final sort = ref.watch(libraryItemSearchProvider);

    final filterString = useState<String?>(null);

    useEffect(() {
      if (sort.state.filterKey != null && sort.state.filterKey!.isNotEmpty) {
        filterString.value = _getSelectedFilterLabel(
            sort.state.filterKey!, sort.state.filter, ref);
      } else {
        filterString.value = null;
      }
      return null;
    }, [sort.state.filterKey, sort.state.filter]);

    return filter.when(
      data: (data) {
        IconData icon = Icons.filter_alt_outlined;
        if (sort.state.filterKey != null && sort.state.filterKey!.isNotEmpty) {
          icon = Icons.filter_alt_off_outlined;
        } else {
          icon = Icons.filter_alt_outlined;
        }
        return Row(
          children: [
            if (filterString.value != null)
              Container(
                  constraints: BoxConstraints(
                      maxWidth: max(
                          MediaQuery.of(context).size.width * 0.5 - 100, 50)),
                  child: PlatformText(
                    overflow: TextOverflow.ellipsis,
                    filterString.value!,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  )),
            _buildFilterButton(icon,
                data: data?.data,
                context: context,
                ref: ref,
                filterString: filterString),
          ],
        );
      },
      error: (e, s) => _buildFilterButton(Icons.filter_alt_off_outlined),
      loading: () => _buildFilterButton(Icons.filter_alt_outlined),
    );
  }

  Widget _buildFilterButton(IconData icon,
      {LibraryFilterData? data,
      BuildContext? context,
      WidgetRef? ref,
      ValueNotifier<String?>? filterString}) {
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
              filterString?.value = null;
            } else {
              _showFilterDialog(context!, data, ref);
            }
          }
        },
        icon: Icon(icon),
      ),
    );
  }

  String? _getSelectedFilterLabel(
      String filterKey, String? filterValue, WidgetRef ref) {
    final filter = ref.read(filterProvider);
    final data = filter.maybeWhen(
      data: (data) => data?.data,
      orElse: () => null,
    );

    if (filterKey == 'series' && data != null) {
      return data.series
          ?.firstWhere((series) => series.id.toString() == filterValue)
          .name;
    } else if (filterKey == 'authors' && data != null) {
      return data.authors
          ?.firstWhere((author) => author.id.toString() == filterValue)
          .name;
    } else if (filterKey == 'genres' && data != null) {
      return filterValue;
    } else if (filterKey == 'tags' && data != null) {
      return filterValue;
    } else if (filterKey == 'narrators' && data != null) {
      return data.narrators?.firstWhere((narrator) => narrator == filterValue);
    } else if (filterKey == 'languages' && data != null) {
      return filterValue;
    } else if (filterKey == 'progress') {
      switch (filterValue) {
        case 'finished':
          return S.current.finished;
        case 'not-started':
          return S.current.notStarted;
        case 'not-finished':
          return S.current.notFinished;
        case 'in-progress':
          return S.current.inProgress;
      }
    }
    return null;
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
              if (selectedKey == 'series') {
                sortNotifier.state = sortNotifier.state.copyWith(
                  filter: entry.key,
                  filterKey: selectedKey,
                  sort: 'sequence',
                  desc: 1,
                );
              } else {
                sortNotifier.state = sortNotifier.state.copyWith(
                  filter: entry.key,
                  filterKey: selectedKey,
                );
              }
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
          items[series.id.toString()] = '${series.name}';
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
