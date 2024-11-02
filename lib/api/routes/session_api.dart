import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:dio/dio.dart';

class SessionApi {
  final Dio _dio;

  SessionApi(this._dio);

  Future<bool> closeOpenSession(
    String id, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    ABSApi.makeApiPostRequest(
      route: '/api/session/$id/close',
      fromJson: null,
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      returnData: true,
      bodyData: null,
    );

    return true;
  }
}
