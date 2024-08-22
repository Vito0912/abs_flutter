import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seriesProvider = StateNotifierProvider<SeriesNotifier,
    AsyncValue<GetLibrarySeries200Response?>>((ref) => SeriesNotifier(ref));

class SeriesNotifier
    extends StateNotifier<AsyncValue<GetLibrarySeries200Response?>> {
  SeriesNotifier(this.ref) : super(const AsyncValue.loading());

  final Ref ref;

  Future<void> fetchSeries({required int page, bool loadMore = false}) async {
    final api = ref.read(apiProvider);
    final currentLibrary = ref.read(currentLibraryProvider);

    if (api == null || currentLibrary?.id == null) {
      state =
          AsyncValue.error('Library or API not available', StackTrace.current);
      return;
    }

    final search = ref.read(libraryItemSearchProvider);

    try {
      final response = await api.getLibrariesApi().getLibrarySeries(
            id: currentLibrary!.id!,
            limit: 15,
            page: page,
            sort: search.sort,
            desc: search.desc,
          );

      final results = response.data?.results?.toList() ?? [];

      if (loadMore) {
        final currentData = state.value?.results?.toList() ?? [];
        final combinedResults = currentData + results;
        state = AsyncValue.data(response.data!
            .rebuild((b) => b..results = ListBuilder(combinedResults)));
      } else {
        state = AsyncValue.data(response.data);
      }
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
