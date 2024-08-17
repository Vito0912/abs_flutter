import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_preview.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/no_connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:abs_flutter/models/user.dart' as m;

class LibraryItems extends ConsumerStatefulWidget {
  const LibraryItems({super.key});

  @override
  _LibraryItemsState createState() => _LibraryItemsState();
}

class _LibraryItemsState extends ConsumerState<LibraryItems> {
  late ScrollController _scrollController;
  bool _isLoadingMore = false;
  bool _hasMore = true;
  double abovePadding = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >
        _scrollController.position.maxScrollExtent - 400) {
      if (_scrollController.position.pixels != 0) {
        _loadMoreData();
      }
    }
  }

  Future<void> _loadMoreData() async {
    if (!_isLoadingMore && _hasMore) {
      setState(() {
        _isLoadingMore = true;
      });

      final libraryItems = ref.read(libraryItemsProvider);
      if (libraryItems != null) {
        await ref
            .read(libraryItemsProvider.notifier)
            .loadMoreData(libraryItems.page + 1);
      }

      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final connection = ref.watch(connectionProvider);
    final libraryItems = ref.watch(libraryItemsProvider);

    if (!connection) {
      return _buildSafeArea(const NoConnection());
    }

    (MediaQuery.of(context).size.width < 900)
        ? abovePadding = 80
        : abovePadding = 16;

    if (_scrollController.hasClients &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent) {
      _loadMoreData();
    }

    if (libraryItems == null) {
      return _buildSafeArea(_buildShimmerLoading());
    } else {
      if (libraryItems.page <= 0) {
        final progressProv = ref.read(progressProvider);
        progressProv.getAllProgress();
      }
      _hasMore = libraryItems.total != libraryItems.items.length;
      return _buildSafeArea(_buildItems(context, libraryItems));
    }
  }

  Widget _buildSafeArea(Widget child) {
    return SafeArea(child: child);
  }

  Widget _buildItems(BuildContext context, LibraryPreview items) {
    if (items.items.isEmpty) {
      return Center(child: PlatformText(S.of(context).noItemsFound));
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 200).floor();
        return GridView.builder(
          controller: _scrollController,
          padding: EdgeInsets.only(
              left: 8.0, right: 8.0, top: abovePadding, bottom: 8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.75,
          ),
          itemCount: items.items.length + (_isLoadingMore ? 20 : 0),
          itemBuilder: (context, index) {
            if (index >= items.items.length) {
              return _buildShimmerPlaceholder();
            }
            final item = items.items[index];
            return _buildItemCard(context, item);
          },
        );
      },
    );
  }

  Widget _buildItemCard(BuildContext context, LibraryPreviewItem item) {
    final currentUser = ref.watch(currentUserProvider);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.push('/view/book/${item.id}');
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: PlatformWidget(
            material: (_, __) => InkWell(
              onTap: () {
                context.push('/view/${item.mediaType}/${item.id}');
              },
              child: _buildCard(item, currentUser),
            ),
            cupertino: (_, __) => GestureDetector(
              onTap: () {
                context.push('/view/${item.mediaType}/${item.id}');
              },
              child: _buildCard(item, currentUser),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(LibraryPreviewItem item, m.User? currentUser) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Semantics(
              label: S.of(context).bookCover,
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: AlbumImage(item.id),
                  ),
                  if (item.mediaType == 'book')
                    Consumer(builder: (context, ref, child) {
                      MediaProgress? progress = ref.watch(
                          progressProviderWithItemId(
                              ItemEpisodeId(item.id, null)));
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          item.seriesLabel != null
                              ? Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Chip(
                                          visualDensity: const VisualDensity(
                                              horizontal:
                                                  VisualDensity.minimumDensity,
                                              vertical:
                                                  VisualDensity.minimumDensity),
                                          label: PlatformText(
                                              '#${item.seriesLabel!}'))),
                                )
                              : const SizedBox.shrink(),
                          LinearProgressIndicator(
                            value: progress?.progress?.toDouble() ?? 0,
                            minHeight: 5.0,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.green),
                            backgroundColor: Colors.grey[300],
                          ),
                        ],
                      );
                    }),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Text(
          item.authors.join(", "),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _buildShimmerLoading() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 200).floor();
        return GridView.builder(
          padding: EdgeInsets.only(
              left: 8.0, right: 8.0, top: abovePadding, bottom: 8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: 20,
          itemBuilder: (context, index) => _buildShimmerPlaceholder(),
        );
      },
    );
  }

  Widget _buildShimmerPlaceholder({bool withText = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(color: Colors.white),
          ),
        ),
        if (withText) ...[
          const SizedBox(height: 8.0),
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(height: 20.0, color: Colors.white),
          ),
          const SizedBox(height: 4.0),
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(height: 20.0, width: 50, color: Colors.white),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
