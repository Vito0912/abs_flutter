import 'dart:async';

import 'package:abs_flutter/features/library/notch/filter_button.dart';
import 'package:abs_flutter/features/library/notch/sort_button.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotchContent extends ConsumerStatefulWidget {
  final bool disableFilter;
  final bool disableSearch;
  final Map<String, String>? sortKeys;
  const NotchContent(
      {super.key,
      this.disableFilter = false,
      this.disableSearch = false,
      this.sortKeys});

  @override
  _NotchContentState createState() => _NotchContentState();
}

class _NotchContentState extends ConsumerState<NotchContent> {
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

    searchController.text = librarySort.search ?? "";

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      enabled: !widget.disableSearch,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(PlatformIcons(context).search),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(top: 12),
                        hintText: !widget.disableSearch
                            ? S.of(context).search
                            : S.of(context).searchDisabled,
                        hintStyle: !widget.disableSearch
                            ? Theme.of(context).textTheme.bodyLarge
                            : Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                        disabledBorder: InputBorder.none,
                      ),
                      autofocus: false,
                      onChanged: widget.disableSearch
                          ? null // Disable onChanged if disableSearch is true
                          : (value) {
                              if (_debounce?.isActive ?? false)
                                _debounce?.cancel();
                              _debounce = Timer(_debouceDuration, () async {
                                librarySortNotifier.state =
                                    librarySortNotifier.state.copyWith(
                                  search: value,
                                );
                              });
                            },
                    ),
                  ),
                  SortButton(
                    overwriteSortOptions: widget.sortKeys,
                  ),
                  if (!widget.disableFilter) const FilterButton(),
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
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
