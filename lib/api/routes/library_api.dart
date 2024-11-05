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
}
