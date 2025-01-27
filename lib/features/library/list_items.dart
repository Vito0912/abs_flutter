import 'package:abs_flutter/features/library/list/collection_view.dart';
import 'package:abs_flutter/features/library/list/playlist_view.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabBarWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playlistCollectionNotifier = ref.watch(playlistCollectionProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            padding: EdgeInsets.zero,
            tabs: [
              Tab(text: S.of(context).collections),
              Tab(text: S.of(context).playlists),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RefreshIndicator(
              onRefresh: () async {
                await playlistCollectionNotifier.refresh();
              },
              child: playlistCollectionNotifier.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : playlistCollectionNotifier.error != null
                      ? Center(
                          child: Text(
                              'Error: ${playlistCollectionNotifier.error}'))
                      : const CollectionView(),
            ),
            RefreshIndicator(
              onRefresh: () async {
                await playlistCollectionNotifier.refresh();
              },
              child: playlistCollectionNotifier.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : playlistCollectionNotifier.error != null
                      ? Center(
                          child: Text(
                              'Error: ${playlistCollectionNotifier.error}'))
                      : const PlaylistView(),
            ),
          ],
        ),
      ),
    );
  }
}
