import 'package:abs_flutter/api/library/library_items.dart';
import 'package:abs_flutter/api/library/request/library_items_request.dart';
import 'package:abs_flutter/api/library/search_library.dart';
import 'package:abs_flutter/api/library/stats/library_stats.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:dio/dio.dart';

class LibraryApi {
  final Dio _dio;

  LibraryApi(this._dio);

  Future<Response<LibraryStats>> getLibraryStats(
    String libraryId, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/libraries/$libraryId/stats',
      fromJson: (data) => LibraryStats.fromJson(data),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      queryParams: {},
    );
  }

  Future<Response<LibraryItems>> getLibraryItems(
    String libraryId,
    LibraryItemsRequest request, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/libraries/$libraryId/items',
      fromJson: (data) => LibraryItems.fromJson(data),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      queryParams: request.toJson(),
    );
  }

  Future<Response<SearchLibrary>> getSearchLibrary(
    String libraryId,
    String search, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/libraries/$libraryId/search',
      fromJson: (data) => SearchLibrary.fromJson(data),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      queryParams: {'q': search, 'limit': 50},
    );
  }
}
