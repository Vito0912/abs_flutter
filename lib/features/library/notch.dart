import 'package:abs_flutter/features/library/notch/notch_content.dart';
import 'package:flutter/material.dart';

class LibraryNotch extends StatelessWidget {
  final bool disableFilter;
  final bool disableSearch;
  final Map<String, String>? sortKeys;
  const LibraryNotch(
      {super.key,
      this.disableFilter = false,
      this.disableSearch = false,
      this.sortKeys});

  @override
  Widget build(BuildContext context) {
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
          child: NotchContent(
            disableFilter: disableFilter,
            disableSearch: disableSearch,
            sortKeys: sortKeys,
          )),
    );
  }
}
