import 'package:abs_flutter/api/list/response/collection_response.dart';
import 'package:abs_flutter/api/list/response/playlist_response.dart';
import 'package:dio/dio.dart';

import 'abs_api.dart';

class ListApi {
  final Dio _dio;

  ListApi(this._dio);

  Future<Response<PlaylistResponse>> getUserPlaylist({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
        route: '/api/playlists',
        fromJson: (data) => PlaylistResponse.fromJson(data),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        dio: _dio,
        queryParams: {});
  }

  Future<Response<CollectionResponse>> getCollections({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    return ABSApi.makeApiGetRequest(
        route: '/api/collections',
        fromJson: (data) => CollectionResponse.fromJson(data),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        dio: _dio,
        queryParams: {});
  }
}
