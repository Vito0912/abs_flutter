import 'package:abs_flutter/features/library/notch/filter_button.dart';
import 'package:abs_flutter/features/library/notch/sort_button.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryNotch extends ConsumerWidget {
  const LibraryNotch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTerm = ref.watch(libraryItemSearchProvider.notifier);
    final search = ref.watch(libraryItemSearchProvider);
    final searchController = TextEditingController(text: searchTerm.state);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SearchBar(
                controller: searchController,
                trailing:[
                  const SortButton(),
                  const FilterButton(),

                  if(search.isNotEmpty) PlatformIconButton(
                  icon: Icon(PlatformIcons(context).clear),
                  onPressed: () {
                    searchController.clear();
                    searchTerm.state = '';
                  },


                )
                ],
                keyboardType: TextInputType.text,
                leading: Icon(PlatformIcons(context).search),
                autoFocus: false,
                onChanged: (value) {
                  searchTerm.state = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
