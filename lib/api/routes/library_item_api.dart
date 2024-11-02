import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/library_items/request/library_item_request.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:dio/dio.dart';

class LibraryItemApi {
  final Dio _dio;

  LibraryItemApi(this._dio);

  Future<Response<LibraryItem>> getLibraryItem({
    required LibraryItemRequest libraryItemRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/items/{id}',
      fromJson: (data) => LibraryItem.fromJson(data),
      queryParams: libraryItemRequest.toJson(),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
    );
  }
}
