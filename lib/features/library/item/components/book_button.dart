import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';

class BookButton extends StatelessWidget {
  final LibraryItem item;
  const BookButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return PlatformElevatedButton(
      onPressed: () {
        context.push('/e-reader/${item.id}');
      },
      child: const Icon(Icons.book_outlined),
    );
  }
}
