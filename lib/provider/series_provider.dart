import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seriesProvider =
    FutureProvider<GetLibrarySeries200Response?>((ref) async {
  final api = ref.watch(apiProvider);
  final currentLibrary = ref.watch(currentLibraryProvider);

  if (api == null || currentLibrary == null || currentLibrary.id == null) {
    return null;
  }

  final search = ref.watch(libraryItemSearchProvider);

  try {
    final response = await api.getLibrariesApi().getLibrarySeries(
        id: currentLibrary.id!,
        limit: 15,
        sort: search.sort,
        desc: search.desc);
    return response.data!;
  } catch (e) {
    if (e is DioException) {
      log(e.error.toString(), name: 'seriesProvider');

      return null;
    }
    return null;
  }
});
