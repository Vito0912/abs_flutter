import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SortOptions extends StatelessWidget {
  final ValueNotifier<String> filter;
  final ValueNotifier<String> sort;
  final ValueNotifier<bool> isAscending;

  SortOptions(
      {super.key,
      required this.filter,
      required this.sort,
      required this.isAscending});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          child: DropdownButton<String>(
            value: filter.value,
            items: ['Show All', 'Incomplete', 'Complete', 'In Progress']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              filter.value = newValue!;
            },
          ),
        ),
        PlatformIconButton(
          icon: const Icon(Icons.filter_alt_outlined),
          onPressed: () => _showSortOptions(context, sort, isAscending),
        ),
      ],
    );
  }

  void _showSortOptions(BuildContext context, ValueNotifier<String> sort,
      ValueNotifier<bool> isAscending) {
    showPlatformModalSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: _sortOptions.length,
          itemBuilder: (BuildContext context, int index) {
            final sortKey = _sortOptions.keys.elementAt(index);
            final sortValue = _sortOptions.values.elementAt(index);
            final isSelected = sort.value == sortKey;

            return PlatformWidget(
              material: (_, __) => _buildMaterialListTile(
                sortValue,
                isSelected,
                isAscending.value,
                () {
                  if (isSelected) {
                    isAscending.value = !isAscending.value;
                  } else {
                    sort.value = sortKey;
                    isAscending.value = true;
                  }
                  Navigator.of(context).pop();
                },
              ),
              cupertino: (_, __) => _buildCupertinoListTile(
                sortValue,
                isSelected,
                isAscending.value,
                () {
                  if (isSelected) {
                    isAscending.value = !isAscending.value;
                  } else {
                    sort.value = sortKey;
                    isAscending.value = true;
                  }
                  Navigator.of(context).pop();
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildMaterialListTile(
      String sortValue, bool isSelected, bool isAscending, VoidCallback onTap) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sortValue),
          if (isSelected)
            Row(
              children: [
                Icon(isAscending ? Icons.arrow_upward : Icons.arrow_downward),
                const SizedBox(width: 8),
                const Icon(Icons.check),
              ],
            ),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _buildCupertinoListTile(
      String sortValue, bool isSelected, bool isAscending, VoidCallback onTap) {
    return CupertinoListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sortValue),
          if (isSelected)
            Row(
              children: [
                Icon(isAscending
                    ? CupertinoIcons.arrow_up
                    : CupertinoIcons.arrow_down),
                const SizedBox(width: 8),
                const Icon(CupertinoIcons.check_mark),
              ],
            ),
        ],
      ),
      onTap: onTap,
    );
  }

  final Map<String, String> _sortOptions = {
    'Pub Date': 'Publication Date',
    'Episode Title': 'Episode Title',
    'Episode': 'Episode Number',
  };
}
