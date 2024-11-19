import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/library/request/library_items_request.dart';
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
    StateNotifierProvider<SeriesNotifier, AsyncValue<SeriesItems?>>(
        (ref) => SeriesNotifier(ref));

class SeriesNotifier extends StateNotifier<AsyncValue<SeriesItems?>> {
  SeriesNotifier(this.ref) : super(const AsyncValue.loading());

  final Ref ref;

  Future<void> fetchSeries({required int page, bool loadMore = false}) async {
    final ABSApi? api = ref.read(apiProviderNew);
    final ModelLibrary? currentLibrary = ref.read(currentLibraryProvider);

    if (api == null || currentLibrary?.id == null) {
      log('Library or API not available', name: 'seriesProvider');
      state =
          AsyncValue.error('Library or API not available', StackTrace.current);
      return;
    }

    final LibrarySort search = ref.read(libraryItemSearchProvider);

    try {
      final response = await api.getLibraryApi().getLibrarySeries(
          currentLibrary!.id!,
          LibraryItemsRequest(
            limit: 15,
            page: page,
            sort: search.sort,
            desc: search.desc,
          ));

      final List<abs.Series> results = response.data?.results ?? [];

      if (loadMore) {
        final currentData = state.value?.results ?? [];
        state = AsyncValue.data(SeriesItems(
          results: [...currentData, ...results],
          total: response.data?.total ?? state.value?.total ?? 0,
          page: response.data?.page ?? state.value?.page ?? 0,
          limit: response.data?.limit ?? state.value?.limit ?? 0,
          sortBy: response.data?.sortBy ?? state.value?.sortBy,
          sortDesc: response.data?.sortDesc ?? state.value?.sortDesc,
          filterBy: response.data?.filterBy ?? state.value?.filterBy,
        ));
      } else {
        state = AsyncValue.data(response.data);
      }
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> resetSeries() async {
    state = const AsyncValue.loading();
    await fetchSeries(page: 0);
  }
}
