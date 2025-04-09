import 'dart:convert';

import 'package:abs_flutter/api/list/response/playlist_response.dart';
import 'package:abs_flutter/features/library/item_components/item_series.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlaylistView extends ConsumerStatefulWidget {
  const PlaylistView({super.key});

  @override
  _PlaylistViewState createState() => _PlaylistViewState();
}

class _PlaylistViewState extends ConsumerState<PlaylistView> {
  @override
  Widget build(BuildContext context) {
    final listValue = ref.watch(playlistCollectionProvider);
    double abovePadding = 0;

    final PlaylistResponse? data = listValue.playlists;

    if (data == null || data.items.isEmpty) {
      return const Center(child: Text('No series found'));
    }

    final playlistList = data.items
        .where((playlists) =>
            playlists.items != null && playlists.items!.isNotEmpty)
        .toList();

    if (playlistList.isEmpty) {
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
          itemCount: playlistList.length,
          itemBuilder: (context, index) {
            if (index == playlistList.length) {
              return const Center(child: CircularProgressIndicator());
            }

            final currentSeries = playlistList[index];
            final List<LibraryPreviewItem?> books =
                currentSeries.items!.map((playlistItem) {
              final bookItem = playlistItem.libraryItem;
              if (bookItem == null) {
                return null;
              }
              return LibraryPreviewItem(
                id: bookItem.id,
                title: bookItem.media?.bookMedia?.metadata.title ??
                    'Unknown Title',
                subtitle: bookItem.media?.bookMedia?.metadata.subtitle ?? '',
                authors: bookItem.media?.bookMedia?.metadata.authors
                        ?.map((e) => e.name ?? 'Unknown Author')
                        .toList() ??
                    [],
                mediaType: bookItem.mediaType ?? 'Unknown',
              );
            }).toList();

            List<LibraryPreviewItem> nonNullBooks = books
                .where((element) => element != null)
                .map((e) => e!)
                .toList();

            final seriesItem = LibrarySeriesPreview(
              books: nonNullBooks,
              total: books.length,
              page: 0,
              id: currentSeries.id,
              libraryId: currentSeries.libraryId,
              name: currentSeries.name,
            );

            String base64Id = Uri.encodeComponent(base64.encode(utf8.encode(currentSeries.id)));

            return MultiItem('/playlist-view/$base64Id',
                series: seriesItem);
          },
        );
      },
    );
  }
}
