import 'package:abs_flutter/provider/log_provider.dart';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final shelfProvider = FutureProvider<BuiltList<LibraryShelf>?>((ref) async {
  final api = ref.watch(apiProvider);
  final currentLibrary = ref.watch(currentLibraryProvider);

  if (api == null || currentLibrary == null || currentLibrary.id == null) {
    return null;
  }

  try {
    final response = await api
        .getLibrariesApi()
        .getPersonalizedLibrary(id: currentLibrary.id!, limit: 15);
    return response.data!;
  } catch (e) {
    if (e is DioException) {
      log(e.error.toString(), name: 'shelfProvider');
      log(e.stackTrace.toString(), name: 'shelfProvider');

      return null;
    }
    return null;
  }
});
