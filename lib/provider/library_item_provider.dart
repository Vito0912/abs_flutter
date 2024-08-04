import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define your librariesProvider using FutureProvider.family
final itemProvider = FutureProvider.family<Response<GetLibraryItem200Response>?, String>((ref, id) async {
  final api = ref.watch(apiProvider);

  if (api == null) {
    return null;
  }


  try {
    final response = await api.getLibraryItemApi().getLibraryItem(
        id: id

    );
    return response;
  } catch (e) {
    if (e is DioException) {
      print(e);
      log(e.response!.data!.toString());
      return null;
    }

    return null;
  }
});
