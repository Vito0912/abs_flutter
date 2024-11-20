import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/library/library_items.dart';
import 'package:abs_flutter/api/library/request/library_items_request.dart';
import 'package:abs_flutter/api/library/search_library.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/models/library_preview.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_sort.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final libraryItemsProvider =
    StateNotifierProvider<LibrariesNotifier, LibraryPreview?>((ref) {
  final ABSApi? api = ref.watch(apiProviderNew);
  final currentLibrary = ref.watch(currentLibraryProvider);
  final librarySort = ref.watch(libraryItemSearchProvider);

  return LibrariesNotifier(api, currentLibrary, librarySort);
});

class LibrariesNotifier extends StateNotifier<LibraryPreview?> {
  final ABSApi? api;
  final ModelLibrary? currentLibrary;
  final LibrarySort sort;
  late final int limit;
  LibraryItems? altResponse;

  int page = 0;
  final double screenSize = MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.single)
          .size
          .width *
      MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.single)
          .size
          .height;

  LibrariesNotifier(this.api, this.currentLibrary, this.sort) : super(null) {
    limit = _calculateLoadLimit();
    loadInitialData();
  }

  Future<void> reloadData() async {
    state = null;
    page = 0;
    altResponse = null;

    await loadInitialData();
  }

  int _calculateLoadLimit() {
    double dividedValue = screenSize / (150 * 300);
    int ceilValue = dividedValue.ceil();
    int remainder = ceilValue % 5;
    if (remainder == 0) {
      return ceilValue;
    } else {
      return ceilValue + (5 - remainder);
    }
  }

  Future<void> loadInitialData() async {
    if (api == null || currentLibrary == null) return;

    if (sort.search == null || sort.search!.isEmpty) {
      final Response<LibraryItems> response =
          await api!.getLibraryApi().getLibraryItems(
              currentLibrary!.id!,
              LibraryItemsRequest(
                limit: limit,
                page: page,
                desc: sort.desc,
                sort: sort.sort,
                filter: Helper.sortString(sort.filterKey, sort.filter),
              ));
      altResponse = response.data;
      state = _convertToLibraryPreview(response.data);
    } else {
      final Response<SearchLibrary> response = await api!
          .getLibraryApi()
          .getSearchLibrary(currentLibrary!.id!, sort.search!);

      // Check if mounted
      if (mounted) {
        state = _convertSearchToLibraryPreview(response);
      }
    }
  }

  ///
  /// Convert LibraryItems to LibraryItemPreview
  ///
  LibraryPreview? _convertToLibraryPreview(LibraryItems? libraryItem) {
    if (libraryItem == null) {
      return null;
    }

    final List<LibraryPreviewItem> previewItems = [];

    for (final item in libraryItem.results) {
      final previewItem = LibraryPreviewItem(
          id: item.id,
          title: item.media!.title!,
          subtitle: item.media!.subtitle ?? "",
          authors: item.media!.authors ?? [],
          seriesLabel: item.media?.seriesSequence,
          mediaType: item.mediaType!,
          hasAudio: item.media?.hasAudio,
          hasBook: item.media?.hasBook);
      previewItems.add(previewItem);
    }

    print(libraryItem.total);
    print(libraryItem.page);

    LibraryPreview preview = LibraryPreview(
      items: previewItems,
      total: libraryItem.total ?? 0,
      page: libraryItem.page ?? 0,
      limit: libraryItem.limit,
      filterBy: libraryItem.filterBy,
    );

    return preview;
  }

  ///
  /// Convert LibraryItems to LibraryItemPreview
  ///
  LibraryPreview? _convertSearchToLibraryPreview(Response<SearchLibrary> item) {
    if (item.data == null) {
      return null;
    }
    SearchLibrary libraryItem = item.data!;

    List<LibraryPreviewItem> previewItems = [];
    if (libraryItem.book != null || libraryItem.podcast != null) {
      for (final SearchLibraryResult item
          in libraryItem.book ?? libraryItem.podcast!) {
        LibraryPreviewItem previewItem = LibraryPreviewItem(
            id: item.libraryItem!.id,
            title: item.libraryItem!.media!.title!,
            subtitle: item.libraryItem!.media!.subtitle ?? "",
            authors: item.libraryItem!.media!.authors ?? [],
            seriesLabel: item.libraryItem!.media!.seriesSequence,
            mediaType: item.libraryItem!.mediaType!,
            hasAudio: item.libraryItem?.media?.hasAudio,
            hasBook: item.libraryItem?.media?.hasBook);
        previewItems.add(previewItem);
      }
    } else {
      return null;
    }

    LibraryPreview preview = LibraryPreview(
        items: previewItems,
        total: libraryItem.book?.length ?? 0,
        page: 0,
        limit: 50);

    return preview;
  }

  Future<void> loadMoreData(int? userPage) async {
    if (api == null || currentLibrary == null) return;

    if (userPage != null) {
      page = userPage;
    } else {
      page += 1;
    }

    log('Loading more data for page $page', name: 'LibrariesNotifier');

    try {
      if (sort.search == null || sort.search!.isEmpty) {
        final newResponse = await api!.getLibraryApi().getLibraryItems(
            currentLibrary!.id!,
            LibraryItemsRequest(
              limit: limit,
              page: page,
              desc: sort.desc,
              sort: sort.sort,
              filter: Helper.sortString(sort.filterKey, sort.filter),
            ));

        altResponse = _mergeResponses(altResponse, newResponse);
        state = _convertToLibraryPreview(altResponse);
      } else {}
    } catch (e) {
      if (e is DioException) {
        log(e.response?.data.toString() ?? '', name: 'LibrariesNotifier');
        log(e.toString(), name: 'LibrariesNotifier');
      } else {
        log(e.toString(), name: 'LibrariesNotifier');
      }
    }
  }

  LibraryItems? _mergeResponses(
      LibraryItems? response, Response<LibraryItems>? newResponse) {
    if (response == null) {
      return newResponse?.data;
    }

    if (newResponse == null || newResponse.data == null) {
      return response;
    }

    final LibraryItems libraryItems = response;
    final LibraryItems newLibraryItems = newResponse.data!;

    print(libraryItems.results.length);
    print(newLibraryItems.results.length);

    LibraryItems? returnItems = libraryItems.copyWith(
      results: [...libraryItems.results, ...newLibraryItems.results],
      total: newLibraryItems.total,
      page: newLibraryItems.page,
    );

    return returnItems;
  }
}

final libraryItemSearchProvider = StateProvider<LibrarySort>((ref) {
  return LibrarySort(index: 0);
});
