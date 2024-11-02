import 'package:abs_flutter/api/me/login.dart';
import 'package:abs_flutter/api/me/request/login_request.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:dio/dio.dart';

class MeApi {
  final Dio _dio;

  MeApi(this._dio);

  Future<Response<Login>> login({
    required LoginRequest loginRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiPostRequest(
      route: '/login',
      fromJson: (data) => Login.fromJson(data),
      bodyData: loginRequest.toJson(),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
    );
  }
}
