import 'package:abs_flutter/features/library/library_items.dart';
import 'package:flutter/material.dart';

import 'notch.dart';

class LibraryItemsWrapper extends StatelessWidget {
  const LibraryItemsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LibraryItems(),
        LibraryNotch(),
      ],
    );
  }
}
