import 'dart:convert';

import 'package:abs_flutter/api/list/response/collection_response.dart';
import 'package:abs_flutter/features/library/item_components/item_series.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CollectionView extends ConsumerStatefulWidget {
  const CollectionView({super.key});

  @override
  _CollectionViewState createState() => _CollectionViewState();
}

class _CollectionViewState extends ConsumerState<CollectionView> {
  @override
  Widget build(BuildContext context) {
    final listValue = ref.watch(playlistCollectionProvider);
    double abovePadding = 0;

    final CollectionResponse? data = listValue.collections;

    if (data == null || data.items.isEmpty) {
      return const Center(child: Text('No series found'));
    }

    final collectionList = data.items
        .where((collections) =>
            collections.items != null && collections.items!.isNotEmpty)
        .toList();

    if (collectionList.isEmpty) {
      return const Center(child: Text('No series found'));
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 325).floor().clamp(1, 4);

        return AlignedGridView.count(
          padding: EdgeInsets.only(top: abovePadding),
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 8,
          crossAxisSpacing: 12,
          itemCount: collectionList.length,
          itemBuilder: (context, index) {
            if (index == collectionList.length) {
              return const Center(child: CircularProgressIndicator());
            }

            final currentSeries = collectionList[index];
            final books = currentSeries.items!
                .map((bookItem) => LibraryPreviewItem(
                      id: bookItem.id,
                      title: bookItem.media?.bookMedia?.metadata.title ??
                          'Unknown Title',
                      subtitle:
                          bookItem.media?.bookMedia?.metadata.subtitle ?? '',
                      authors: bookItem.media?.bookMedia?.metadata.authors
                              ?.map((e) => e.name ?? 'Unknown Author')
                              .toList() ??
                          [],
                      mediaType: bookItem.mediaType ?? 'Unknown',
                    ))
                .toList();

            final seriesItem = LibrarySeriesPreview(
              books: books,
              total: books.length,
              page: 0,
              id: currentSeries.id,
              libraryId: currentSeries.libraryId,
              name: currentSeries.name,
            );

            String base64Id = Uri.encodeComponent(base64.encode(utf8.encode(currentSeries.id)));

            return MultiItem('/collection-view/$base64Id',
                series: seriesItem);
          },
        );
      },
    );
  }
}
