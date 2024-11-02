import 'package:abs_flutter/features/library/item_components/library_item_widget.dart';
import 'package:abs_flutter/models/library_preview.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/widgets/no_connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LibraryItems extends ConsumerStatefulWidget {
  const LibraryItems({super.key});

  @override
  LibraryItemsState createState() => LibraryItemsState();
}

class LibraryItemsState extends ConsumerState<LibraryItems> {
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

      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final connection = ref.watch(connectionProvider);
    final libraryItems = ref.watch(libraryItemsProvider);

    if (!connection) {
      return const NoConnection();
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
      return _buildLoading();
    } else {
      _hasMore = libraryItems.total != libraryItems.items.length;
      return RefreshIndicator(
          onRefresh: () {
            return Future.wait([
              ref.read(libraryItemsProvider.notifier).reloadData(),
              ref.read(progressProvider).getAllProgress()
            ]);
          },
          child: _buildItems(libraryItems));
    }
  }

  Widget _buildItems(LibraryPreview libraryItems) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return AlignedGridView.count(
          crossAxisCount: constraints.maxWidth ~/ 190,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          padding: EdgeInsets.only(top: abovePadding, left: 8, right: 8),
          itemCount: libraryItems.items.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return LibraryItemWidget(item: libraryItems.items[index]);
          },
        );
      },
    );
  }

  Widget _buildLoading() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return AlignedGridView.count(
          crossAxisCount: constraints.maxWidth ~/ 175,
          mainAxisSpacing: 12,
          crossAxisSpacing: 8,
          padding: EdgeInsets.only(top: abovePadding, left: 8, right: 8),
          controller: _scrollController,
          itemBuilder: (context, index) {
            return LibraryItemWidget.loading();
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
