import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_sort.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SortButton extends ConsumerWidget {
  SortButton({super.key});

  final Map<String, String> sortOptions = {
    "media.metadata.title": S.current.title,
    "media.metadata.seriesName": S.current.series,
    "media.metadata.authorName": S.current.author,
    "media.metadata.publishedYear": S.current.year,
    "media.metadata.publisher": S.current.publisher,
    "media.metadata.language": S.current.language,
    "media.duration": S.current.duration,
    "media.size": S.current.size
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final librarySortNotifier = ref.watch(libraryItemSearchProvider.notifier);

    return PlatformIconButton(
        onPressed: () {
          _showSortOptions(context, librarySortNotifier);
        },
        icon: Icon(
          Icons.sort,
        ));
  }

  void _showSortOptions(
      BuildContext context, StateController<LibrarySort> sort) {
    showPlatformModalSheet(
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.4,
          child: ListView.builder(
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

              return PlatformWidget(
                material: (_, __) => _buildMaterialListTile(
                    sortValue, isSelected, isDescending, onItemTap),
                cupertino: (_, __) => _buildCupertinoListTile(
                    sortValue, isSelected, isDescending, onItemTap),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildMaterialListTile(String sortValue, bool isSelected,
      bool isDescending, VoidCallback onTap) {
    return ListTile(
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
                SizedBox(width: 8),
                Icon(Icons.check),
              ],
            ),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _buildCupertinoListTile(String sortValue, bool isSelected,
      bool isDescending, VoidCallback onTap) {
    return CupertinoListTile(
      title: Text(sortValue),
      trailing: isSelected
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Tooltip(
                  message:
                      isDescending ? S.current.ascending : S.current.descending,
                  child: Icon(
                      isDescending
                          ? CupertinoIcons.arrow_up
                          : CupertinoIcons.arrow_down,
                      size: 16),
                ),
                SizedBox(width: 8),
                Icon(CupertinoIcons.check_mark),
              ],
            )
          : null,
      onTap: onTap,
    );
  }
}
