import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_preview.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels > _scrollController.position.maxScrollExtent - 400) {
          if (_scrollController.position.pixels != 0) {
            _loadMoreData();
          }
        }
      });
  }

  Future<void> _loadMoreData() async {
    if (!_isLoadingMore && _hasMore) {
      setState(() {
        _isLoadingMore = true;
      });
      final libraryItems = ref.read(libraryItemsProvider);
      if (libraryItems != null) {
        await ref.read(libraryItemsProvider.notifier).loadMoreData(libraryItems.page + 1);
      }
      setState(() {
        _isLoadingMore = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final progressProvide = ref.watch(progressProvider);

    final progress = progressProvide.getProgress();

    final libraryItems = ref.watch(libraryItemsProvider);
    int total = 0;

    if (libraryItems == null) {
      return _addSafeZone(_shimmerLoading());
    } else {
      total = libraryItems.total ?? 0;
      if(total == (libraryItems.items.length ?? 0)) {
        _hasMore = false;
      }
      return _addSafeZone(_buildItems(context, libraryItems, ref, progress));
    }
  }

  Widget _addSafeZone(Widget child) {
    return SafeArea(
      child: child,
    );
  }

  Widget _buildItems(BuildContext context, LibraryPreview items, WidgetRef ref, List<MediaProgress>? progress) {
    if (items.items.isEmpty) {
      return _error(context);
    }

    final results = items.items;
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 200).floor();
        return GridView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 2.0,
            childAspectRatio: 0.75,
          ),
          itemCount: results.length + (_isLoadingMore ? 20 : 0), // Show 20 placeholders if loading more
          itemBuilder: (context, index) {
            if (index >= results.length) {
              return _shimmerPlaceholder();
            }
            final item = results[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                },
                child: PlatformWidget(
                  material: (_, __) => InkWell(
                    onTap: () {
                      context.push('/view/book/${item.id}');
                    },
                    child: _buildCard(item, progress?.where((element) => element.libraryItemId == item.id).firstOrNull?.progress),
                  ),
                  cupertino: (_, __) => GestureDetector(
                    onTap: () {
                      context.push('/view/book/${item.id}');
                    },
                    child: _buildCard(item, progress?.where((element) => element.libraryItemId == item.id).firstOrNull?.progress),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCard(LibraryPreviewItem item, num? progress) {
    final currentUser = ref.watch(currentUserProvider);
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
                    child: CachedNetworkImage(
                      imageUrl: '${currentUser!.server!.url}/api/items/${item.id}/cover?token=${currentUser.token}',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => _shimmerPlaceholder(withText: false),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: LinearProgressIndicator(
                      value: progress?.toDouble() ?? 0.0,
                        minHeight: 5.0,
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                      backgroundColor: Colors.grey[300],
                    ),
                  )
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
          item.authors.join(","),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _shimmerLoading() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = (constraints.maxWidth / 200).floor();
        return GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return _shimmerPlaceholder();
          },
        );
      },
    );
  }

  Widget _error(BuildContext context) {
    return Center(child: Text(S.of(context).error));
  }

  Widget _shimmerPlaceholder({bool withText = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.white,
            ),
          ),
        ),
        withText ? const SizedBox(height: 8.0) : const SizedBox(),
        withText ? Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 20.0,
            color: Colors.white,
          ),
        ) : const SizedBox(),
        withText ? const SizedBox(height: 4.0) : const SizedBox(),
        withText ? Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 20.0,
            color: Colors.white,
          ),
        ) : const SizedBox(),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
