import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Fetch the libraries and provide the response
final filterProvider = FutureProvider<Response<LibraryFilterData>?>((ref) async {
  final api = ref.watch(apiProvider);
  final currentLibrary = ref.watch(currentLibraryProvider);

  if (api == null || currentLibrary == null || currentLibrary.id == null) {
    return null;
  }

  try {
    final response = await api.getLibrariesApi().getLibraryFilterData(id: currentLibrary.id!);

    return response;
  } catch (e) {
    if(e is DioException) {
      return null;
    }
   log('$e', name: 'filterProvider');
    return null;
  }
});

