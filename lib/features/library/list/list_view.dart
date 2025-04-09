import 'dart:convert';

import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/list/collection.dart';
import 'package:abs_flutter/api/list/playlist.dart';
import 'package:abs_flutter/features/library/item_components/library_item_widget.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListsItemView extends ConsumerWidget {
  const ListsItemView({super.key, required this.id, required this.type});
  final String id;
  final ListViewType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PlaylistCollectionNotifier items =
        ref.watch(playlistCollectionProvider);

    if (items.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (items.error != null) {
      return Center(child: Text('Error: ${items.error}'));
    }

    final String decodedId = utf8.decode(base64.decode(id));

    final List<LibraryItem> libraryItems = [];
    String title = '';
    if (type == ListViewType.collection) {
      final Collection? collection = items.getCollectionById(decodedId);
      libraryItems.addAll(collection?.items ?? []);
      title = collection?.name ?? '';
    } else {
      final Playlist? playlist = items.getPlaylistById(decodedId);
      libraryItems.addAll(playlist?.items
              ?.map((e) => e.libraryItem)
              .where((element) => element != null)
              .map((e) => e!) ??
          []);
      title = playlist?.name ?? '';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return AlignedGridView.count(
            crossAxisCount: constraints.maxWidth ~/ 190,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
            itemCount: libraryItems.length,
            itemBuilder: (context, index) {
              return LibraryItemWidget(
                  item: LibraryPreviewItem.fromLibraryItem(libraryItems[index]),
                  collapseSeries: libraryItems[index].collapsedSeries);
            },
          );
        },
      ),
    );
  }
}

enum ListViewType { collection, playlist }
