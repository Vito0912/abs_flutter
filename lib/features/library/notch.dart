import 'dart:async';

import 'package:abs_flutter/features/library/notch/filter_button.dart';
import 'package:abs_flutter/features/library/notch/sort_button.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryNotch extends ConsumerStatefulWidget {
  const LibraryNotch({super.key});

  @override
  _LibraryNotchState createState() => _LibraryNotchState();
}

class _LibraryNotchState extends ConsumerState<LibraryNotch> {
  late TextEditingController searchController;
  final Duration _debouceDuration = const Duration(milliseconds: 500);
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    final librarySortNotifier = ref.read(libraryItemSearchProvider.notifier);
    searchController =
        TextEditingController(text: librarySortNotifier.state.search);
  }

  @override
  void dispose() {
    searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final librarySortNotifier = ref.watch(libraryItemSearchProvider.notifier);
    final librarySort = ref.watch(libraryItemSearchProvider);

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
                trailing: [
                  SortButton(),
                  const FilterButton(),
                  if (librarySort.search == null ||
                      librarySort.search!.isNotEmpty)
                    PlatformIconButton(
                      icon: Icon(PlatformIcons(context).clear),
                      onPressed: () {
                        searchController.clear();
                        librarySortNotifier.state =
                            librarySortNotifier.state.copyWith(
                          search: "",
                        );
                      },
                    )
                ],
                keyboardType: TextInputType.text,
                leading: Icon(PlatformIcons(context).search),
                autoFocus: false,
                onChanged: (value) {
                  if (_debounce?.isActive ?? false) _debounce?.cancel();
                  _debounce = Timer(_debouceDuration, () async {
                    librarySortNotifier.state =
                        librarySortNotifier.state.copyWith(
                          search: value,
                        );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
