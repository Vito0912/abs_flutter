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
              Tab(text: "Collections"),
              Tab(text: "Playlists"),
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
                  ? Center(child: CircularProgressIndicator())
                  : playlistCollectionNotifier.error != null
                      ? Center(
                          child: Text(
                              'Error: ${playlistCollectionNotifier.error}'))
                      : ListView.builder(
                          itemCount: playlistCollectionNotifier
                                  .collections?.items.length ??
                              0,
                          itemBuilder: (context, index) {
                            print(playlistCollectionNotifier.collections);
                            final collection = playlistCollectionNotifier
                                    .collections?.items[index].name ??
                                "Unnamed";
                            return ListTile(title: Text(collection));
                          },
                        ),
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
                      : ListView.builder(
                          itemCount: playlistCollectionNotifier
                                  .playlists?.items.length ??
                              0,
                          itemBuilder: (context, index) {
                            final playlist = playlistCollectionNotifier
                                    .playlists?.items[index].name ??
                                "Unnamed";
                            return ListTile(title: Text(playlist));
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
