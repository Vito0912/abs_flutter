import 'package:abs_api/abs_api.dart';
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
  final api = ref.watch(apiProvider);
  final currentLibrary = ref.watch(currentLibraryProvider);
  final librarySort = ref.watch(libraryItemSearchProvider);

  return LibrariesNotifier(api, currentLibrary, librarySort);
});

class LibrariesNotifier extends StateNotifier<LibraryPreview?> {
  final AbsApi? api;
  final ModelLibrary? currentLibrary;
  final LibrarySort sort;
  late final int limit;
  Response<GetLibraryItems200Response>? altResponse;

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
    loadInitialData();
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
    limit = _calculateLoadLimit();
    if (api == null || currentLibrary == null) return;

    if (sort.search == null || sort.search!.isEmpty) {
      final response = await api!.getLibrariesApi().getLibraryItems(
            id: currentLibrary!.id!,
            limit: limit,
            page: page,
            desc: sort.desc,
            sort: sort.sort,
            filter: Helper.sortString(sort.filterKey, sort.filter),
          );
      altResponse = response;
      state = _convertToLibraryPreview(response);
    } else {
      final response = await api!
          .getLibrariesApi()
          .searchLibrary(id: currentLibrary!.id!, q: sort.search!, limit: 25);

      // Check if mounted
      if (mounted) {
        state = _convertSearchToLibraryPreview(response);
      }
    }
  }

  ///
  /// Convert LibraryItems to LibraryItemPreview
  ///
  LibraryPreview? _convertToLibraryPreview(
      Response<GetLibraryItems200Response>? libraryItem) {
    if (libraryItem == null || libraryItem.data == null) {
      return null;
    }

    final List<LibraryPreviewItem> previewItems = [];

    if (libraryItem.data != null) {
      for (final item in libraryItem.data!.results!) {
        //TODO: Wrong OpenAPI spec for authors
        final previewItem = LibraryPreviewItem(
            id: item.id!,
            title: item.media!.metadata!.title!,
            subtitle: item.media!.metadata!.subtitle ?? "",
            authors:
                item.media!.metadata!.authors?.toList().cast<String>() ?? [],
            seriesLabel: (item.media!.metadata!.series != null &&
                    item.media!.metadata!.series!.isNotEmpty)
                ? item.media!.metadata!.series![0].sequence
                : null,
            mediaType: item.mediaType!.name);
        previewItems.add(previewItem);
      }
    }

    LibraryPreview preview = LibraryPreview(
      items: previewItems,
      total: libraryItem.data!.total!,
      page: libraryItem.data!.page!,
      limit: libraryItem.data!.limit,
      filterBy: libraryItem.data!.filterBy,
    );

    return preview;
  }

  ///
  /// Convert LibraryItems to LibraryItemPreview
  ///
  LibraryPreview? _convertSearchToLibraryPreview(
      Response<SearchLibrary200Response> item) {
    if (item.data == null) {
      return null;
    }
    SearchLibrary200Response libraryItem = item.data!;

    List<LibraryPreviewItem> previewItems = [];
    if (libraryItem.book != null) {
      for (final item in libraryItem.book!) {
        LibraryPreviewItem previewItem = LibraryPreviewItem(
            id: item.libraryItem!.id!,
            title: item.libraryItem!.media!.metadata!.title!,
            subtitle: item.libraryItem!.media!.metadata!.subtitle ?? "",
            authors: item.libraryItem!.media!.metadata!.authors
                    ?.toList()
                    .map((e) => e.name ?? "")
                    .toList() ??
                [],
            seriesLabel: (item.libraryItem!.media!.metadata!.series != null &&
                    item.libraryItem!.media!.metadata!.series!.isNotEmpty)
                ? item.libraryItem!.media!.metadata!.series![0].sequence
                : null,
            mediaType: item.libraryItem!.mediaType!.name);
        previewItems.add(previewItem);
      }
    } else if (libraryItem.podcast != null) {
      for (final item in libraryItem.podcast!) {
        LibraryPreviewItem previewItem = LibraryPreviewItem(
            id: item.libraryItem!.id!,
            title: item.libraryItem!.media!.metadata!.title!,
            subtitle: item.libraryItem!.media!.metadata!.subtitle ?? "",
            authors: item.libraryItem!.media!.metadata!.authors
                    ?.toList()
                    .map((e) => e.name ?? "")
                    .toList() ??
                [],
            seriesLabel: (item.libraryItem!.media!.metadata!.series != null &&
                    item.libraryItem!.media!.metadata!.series!.isNotEmpty)
                ? item.libraryItem!.media!.metadata!.series![0].sequence
                : null,
            mediaType: item.libraryItem!.mediaType!.name);
        previewItems.add(previewItem);
      }
    } else {
      return null;
    }

    LibraryPreview preview = LibraryPreview(
        items: previewItems,
        total: libraryItem.book?.length ?? 0,
        page: 0,
        limit: 25);

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
        final newResponse = await api!.getLibrariesApi().getLibraryItems(
              id: currentLibrary!.id!,
              limit: limit,
              page: page,
              desc: sort.desc,
              sort: sort.sort,
              filter: Helper.sortString(sort.filterKey, sort.filter),
            );

        state =
            _convertToLibraryPreview(_mergeResponses(altResponse, newResponse));
        altResponse = newResponse;
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

  Response<GetLibraryItems200Response>? _mergeResponses(
      Response<GetLibraryItems200Response>? response,
      Response<GetLibraryItems200Response>? newResponse) {
    if (response == null) {
      return newResponse;
    }

    if (newResponse == null) {
      return response;
    }

    GetLibraryItems200ResponseBuilder builder =
        GetLibraryItems200ResponseBuilder();
    // Convert the existing results to a ListBuilder
    final existingResultsBuilder = response.data!.results!.toBuilder();

    // Convert the new results to a ListBuilder
    final newResultsBuilder = newResponse.data!.results!.toBuilder();

    // Combine the results
    existingResultsBuilder.addAll(newResultsBuilder.build());

    // Assign the combined results back to the builder
    builder.results = existingResultsBuilder;
    builder.total = response.data!.total!;
    builder.limit = newResponse.data!.limit;
    builder.page = newResponse.data!.page;
    builder.filterBy = newResponse.data!.filterBy;

    newResponse.data = builder.build();

    return newResponse;
  }
}

final libraryItemSearchProvider = StateProvider<LibrarySort>((ref) {
  return LibrarySort();
});
