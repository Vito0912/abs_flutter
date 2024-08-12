
import 'package:abs_flutter/features/library/item/podcast_view.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'book_view.dart';

class ItemView extends ConsumerWidget {
  const ItemView({super.key, required this.itemId, required this.mediaType});

  final String itemId;
  final String mediaType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if(mediaType == "book") {
      return BookView(itemId: itemId);
    } else if(mediaType == "podcast") {
      return PodcastView(itemId: itemId);
    } else {
      return const ErrorText('Error: Item not found');
    }
  }

}
