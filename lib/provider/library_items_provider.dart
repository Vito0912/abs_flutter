import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/library_preview.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:built_collection/src/list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final libraryItemsProvider = StateNotifierProvider<LibrariesNotifier,
    LibraryPreview?>((ref) {

  final api = ref.watch(apiProvider);
  final currentLibrary = ref.watch(currentLibraryProvider);
  final searchTerm = ref.watch(libraryItemSearchProvider);

  String? previousSearchTerm;
  ModelLibrary? previousLibrary;

  if (searchTerm != previousSearchTerm || currentLibrary?.id != previousLibrary?.id) {
    previousLibrary = currentLibrary;
    previousSearchTerm = searchTerm;

    return LibrariesNotifier(api, currentLibrary, searchTerm, true);
  } else {
    return LibrariesNotifier(api, currentLibrary, searchTerm, false);
  }

});

class LibrariesNotifier
    extends StateNotifier<LibraryPreview?> {
  final AbsApi? api;
  final ModelLibrary? currentLibrary;
  final String searchTerm;
  late final int limit;
  Response<GetLibraryItems200Response>? altResponse;

  int page = 0;
  final double screenSize =
      MediaQueryData.fromView(WidgetsBinding.instance.window).size.width *
          MediaQueryData.fromView(WidgetsBinding.instance.window).size.height;

  LibrariesNotifier(this.api, this.currentLibrary, this.searchTerm, bool load) : super(null) {
    print('loading initial data ($load)');
    if(load) loadInitialData();
  }

  int _calculateLoadLimit() {
    double dividedValue = screenSize / (150 * 400);
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

    if(searchTerm.isEmpty) {
      final response = await api!.getLibrariesApi().getLibraryItems(
        id: currentLibrary!.id!,
        limit: limit,
        page: page,
      );
      altResponse = response;
      state = _convertToLibraryPreview(response);
    } else {

    }


  }

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
          authors: item.media!.metadata!.authors?.toList().cast<String>() ?? [],
        );
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

  Future<void> loadMoreData(int? userPage) async {
    if (api == null || currentLibrary == null) return;

    if (userPage != null) {
      page = userPage;
    } else {
      page += 1;
    }

    print('Loading more data for page $page');

    try {

      if(searchTerm.isEmpty) {
        final newResponse = await api!.getLibrariesApi().getLibraryItems(
          id: currentLibrary!.id!,
          limit: limit,
          page: page,
        );

        state = _convertToLibraryPreview(_mergeResponses(altResponse, newResponse));
        altResponse = newResponse;
      } else {

      }
    } catch (e) {
      if (e is DioException) {
        // Handle the error accordingly
      } else {
        print('Exception when calling LibrariesApi->getLibraryItems: $e\n');
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


final libraryItemSearchProvider = StateProvider<String>((ref) {
  return '';
});
