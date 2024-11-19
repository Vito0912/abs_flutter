import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/library/request/library_items_request.dart';
import 'package:abs_flutter/api/library/search_series.dart';
import 'package:abs_flutter/api/library/series_items.dart';
import 'package:abs_flutter/api/library_items/series.dart' as abs;
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/models/library_sort.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seriesProvider =
    StateNotifierProvider<SeriesNotifier, AsyncValue<SeriesItems?>>((ref) {
  final librarySortState = ref.watch(libraryItemSearchProvider);

  return SeriesNotifier(ref, librarySortState);
});

class SeriesNotifier extends StateNotifier<AsyncValue<SeriesItems?>> {
  SeriesNotifier(this.ref, this.search) : super(const AsyncValue.loading()) {
    fetchSeries(page: 0);
  }

  final Ref ref;
  final LibrarySort search;

  Future<void> fetchSeries({required int page, bool loadMore = false}) async {
    final ABSApi? api = ref.read(apiProviderNew);
    final ModelLibrary? currentLibrary = ref.read(currentLibraryProvider);

    if (api == null || currentLibrary?.id == null) {
      log('Library or API not available', name: 'seriesProvider');
      state =
          AsyncValue.error('Library or API not available', StackTrace.current);
      return;
    }

    try {
      SeriesItems? item;
      if (search.search != null && search.search!.isNotEmpty) {
        final response = await api.getLibraryApi().getSearchLibrary(
              currentLibrary!.id!,
              search.search!,
            );

        List<abs.Series> series = [];
        for (SearchSeries searchSeries in response.data?.series ?? []) {
          series.add(searchSeries.series.copyWith(
            books: searchSeries.books,
          ));
        }

        item = SeriesItems(
          results: series,
          total: series.length ?? 0,
          page: 0,
          limit: 0,
          sortBy: search.sort,
          sortDesc: search.desc == 1 ? true : false,
          filterBy: search.filter,
        );
      } else {
        final response = await api.getLibraryApi().getLibrarySeries(
            currentLibrary!.id!,
            LibraryItemsRequest(
              limit: 15,
              page: page,
              sort: search.sort,
              desc: search.desc,
            ));
        item = response.data;
      }

      final List<abs.Series> results = item?.results ?? [];

      if (loadMore) {
        final currentData = state.value?.results ?? [];
        state = AsyncValue.data(SeriesItems(
          results: [...currentData, ...results],
          total: item?.total ?? state.value?.total ?? 0,
          page: item?.page ?? state.value?.page ?? 0,
          limit: item?.limit ?? state.value?.limit ?? 0,
          sortBy: item?.sortBy ?? state.value?.sortBy,
          sortDesc: item?.sortDesc ?? state.value?.sortDesc,
          filterBy: item?.filterBy ?? state.value?.filterBy,
        ));
      } else {
        state = AsyncValue.data(item);
      }
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> resetSeries() async {
    state = const AsyncValue.loading();
    print('resetSeries');
    await fetchSeries(page: 0);
  }
}
