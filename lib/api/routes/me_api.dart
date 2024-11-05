import 'package:abs_flutter/api/library/stats/user_listening_stats.dart';
import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/api/me/login.dart';
import 'package:abs_flutter/api/me/request/create_bookmark_request.dart';
import 'package:abs_flutter/api/me/request/login_request.dart';
import 'package:abs_flutter/api/me/user.dart';
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

  Future<Response<Bookmark>> createBookmark(
    itemId, {
    required CreateBookmarkRequest createBookmarkRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiPostRequest(
      route: '/api/me/item/$itemId/bookmark',
      fromJson: (data) => Bookmark.fromJson(data),
      bodyData: createBookmarkRequest.toJson(),
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
    );
  }

  Future<bool> deleteBookmark(
    itemId,
    time, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiDeleteRequest(
      route: '/api/me/item/$itemId/bookmark/$time',
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
    );
  }

  Future<Response<User>> getUser({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/me',
      fromJson: User.fromJson,
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      queryParams: {},
    );
  }

  Future<Response<UserListeningStats>> getListeningStats(
    String userId, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
      route: '/api/users/$userId/listening-stats',
      fromJson: UserListeningStats.fromJson,
      cancelToken: cancelToken,
      headers: headers,
      extra: extra,
      dio: _dio,
      queryParams: {},
    );
  }
}
