import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_sort.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SortButton extends ConsumerWidget {
  final Map<String, String>? overwriteSortOptions;
  late final Map<String, String> sortOptions;
  SortButton({super.key, this.overwriteSortOptions}) {
    sortOptions = overwriteSortOptions ??
        {
          "media.metadata.title": S.current.title,
          "media.metadata.seriesName": S.current.series,
          "media.metadata.authorName": S.current.author,
          "media.metadata.publisher": S.current.publisher,
          "media.metadata.language": S.current.language,
          "media.duration": S.current.duration,
          "sequence": S.current.sequence,
        };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final librarySortNotifier = ref.watch(libraryItemSearchProvider.notifier);

    return Tooltip(
      message: S.of(context).sort,
      child: PlatformIconButton(
          onPressed: () {
            _showSortOptions(context, librarySortNotifier);
          },
          icon: const Icon(
            Icons.sort,
          )),
    );
  }

  void _showSortOptions(
      BuildContext context, StateController<LibrarySort> sort) {
    showPlatformModalSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: sortOptions.length,
          itemBuilder: (BuildContext context, int index) {
            final sortKey = sortOptions.keys.elementAt(index);
            final sortValue = sortOptions.values.elementAt(index);
            final isSelected = sort.state.sort == sortKey;
            final isDescending = sort.state.desc == 0;

            void onItemTap() {
              sort.state = sort.state.copyWith(
                sort: sortKey,
                desc: isSelected ? (isDescending ? 1 : 0) : 0,
              );
              Navigator.of(context).pop();
            }

            void onItemLongPress() {
              sort.state = sort.state.copyWith(
                sort: sortKey,
                desc: isSelected ? (isDescending ? 1 : 0) : 1,
              );
              Navigator.of(context).pop();
            }

            return PlatformWidget(
              material: (_, __) => _buildMaterialListTile(sortValue, isSelected,
                  isDescending, onItemTap, onItemLongPress),
              cupertino: (_, __) => _buildCupertinoListTile(sortValue,
                  isSelected, isDescending, onItemTap, onItemLongPress),
            );
          },
        );
      },
    );
  }

  Widget _buildMaterialListTile(String sortValue, bool isSelected,
      bool isDescending, VoidCallback onTap, VoidCallback onLongPress) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sortValue),
            if (isSelected)
              Row(
                children: [
                  Tooltip(
                      message: isDescending
                          ? S.current.ascending
                          : S.current.descending,
                      child: Icon(isDescending
                          ? Icons.arrow_upward
                          : Icons.arrow_downward)),
                  const SizedBox(width: 8),
                  const Icon(Icons.check),
                ],
              ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }

  Widget _buildCupertinoListTile(String sortValue, bool isSelected,
      bool isDescending, VoidCallback onTap, VoidCallback onLongPress) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: CupertinoListTile(
        title: Text(sortValue),
        trailing: isSelected
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Tooltip(
                    message: isDescending
                        ? S.current.ascending
                        : S.current.descending,
                    child: Icon(
                        isDescending
                            ? CupertinoIcons.arrow_up
                            : CupertinoIcons.arrow_down,
                        size: 16),
                  ),
                  const SizedBox(width: 8),
                  const Icon(CupertinoIcons.check_mark),
                ],
              )
            : null,
        onTap: onTap,
      ),
    );
  }
}
