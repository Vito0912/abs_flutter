import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChipSection extends ConsumerWidget {
  final String label;
  final Map<String, String> items;
  final bool? showWhenEmpty;
  final String filterKey;
  const ChipSection(
      {super.key,
      required this.label,
      required this.items,
      required this.filterKey,
      this.showWhenEmpty});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if ((showWhenEmpty == null || !showWhenEmpty!) && items.isEmpty) {
      return const SizedBox();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          '$label:',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 0.0,
          children: items.entries
              .map((value) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        ref.read(libraryItemSearchProvider.notifier).state = ref
                            .read(libraryItemSearchProvider.notifier)
                            .state
                            .copyWith(
                                filterKey: filterKey,
                                filter: value.key,
                                search: "",
                                sort:
                                    filterKey == 'series' ? 'sequence' : null);
                        tabController.setIndex(context, 0);
                        context.pop();
                      },
                      child: Chip(
                          label: Text(value.value),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          labelStyle: const TextStyle(fontSize: 12.0)),
                    ),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
