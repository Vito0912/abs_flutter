//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:abs_api/src/api_util.dart';
import 'package:abs_api/src/model/device_info.dart';
import 'package:abs_api/src/model/get_library_item200_response.dart';
import 'package:abs_api/src/model/playback_session_expanded.dart';
import 'package:built_collection/built_collection.dart';

class LibraryItemApi {
  final Dio _dio;

  final Serializers _serializers;

  const LibraryItemApi(this._dio, this._serializers);

  /// Get a single library item by ID on server.
  /// Get a single library item by ID on server.
  ///
  /// Parameters:
  /// * [id] - The ID of the library item.
  /// * [include] - A comma separated list of what to include with the library item. The options are progress, rssfeed, authors (for books), and downloads (for podcasts). expanded must be 1 for include to have an effect.
  /// * [expanded] - Whether to return Library Item Expanded instead. 0 for false, 1 for true.
  /// * [episode] - If requesting progress for a podcast, the episode ID to get progress for.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetLibraryItem200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetLibraryItem200Response>> getLibraryItem({
    required String id,
    String? include,
    int? expanded,
    String? episode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/items/{id}'.replaceAll(
        '{' r'id' '}',
        encodeQueryParameter(_serializers, id, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (include != null)
        r'include':
            encodeQueryParameter(_serializers, include, const FullType(String)),
      if (expanded != null)
        r'expanded':
            encodeQueryParameter(_serializers, expanded, const FullType(int)),
      if (episode != null)
        r'episode':
            encodeQueryParameter(_serializers, episode, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetLibraryItem200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(GetLibraryItem200Response),
            ) as GetLibraryItem200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetLibraryItem200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Play a library item
  /// Play a library item by ID.
  ///
  /// Parameters:
  /// * [id] - The ID of the library item.
  /// * [deviceInfo] - The device information to send to the server.
  /// * [forceDirectPlay] - Whether to force direct play of the library item.
  /// * [forceTranscode] - Whether to force transcoding of the library item.
  /// * [supportedMimeTypes] - The supported mime types for the device.
  /// * [mediaPlayer] - The media player to use.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlaybackSessionExpanded] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlaybackSessionExpanded>> playLibraryItem({
    required String id,
    DeviceInfo? deviceInfo,
    bool? forceDirectPlay,
    bool? forceTranscode,
    BuiltList<String>? supportedMimeTypes,
    String? mediaPlayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/items/{id}/play'.replaceAll(
        '{' r'id' '}',
        encodeQueryParameter(_serializers, id, const FullType(String))
            .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (deviceInfo != null)
        r'deviceInfo': encodeQueryParameter(
            _serializers, deviceInfo, const FullType(DeviceInfo)),
      if (forceDirectPlay != null)
        r'forceDirectPlay': encodeQueryParameter(
            _serializers, forceDirectPlay, const FullType(bool)),
      if (forceTranscode != null)
        r'forceTranscode': encodeQueryParameter(
            _serializers, forceTranscode, const FullType(bool)),
      if (supportedMimeTypes != null)
        r'supportedMimeTypes': encodeCollectionQueryParameter<String>(
          _serializers,
          supportedMimeTypes,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (mediaPlayer != null)
        r'mediaPlayer': encodeQueryParameter(
            _serializers, mediaPlayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PlaybackSessionExpanded? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(PlaybackSessionExpanded),
            ) as PlaybackSessionExpanded;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PlaybackSessionExpanded>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Play a podcast episode
  /// Play a podcast by library item ID and episode ID.
  ///
  /// Parameters:
  /// * [id] - The ID of the library item.
  /// * [episodeId] - The ID of the episode to play.
  /// * [deviceInfo] - The device information to send to the server.
  /// * [forceDirectPlay] - Whether to force direct play of the library item.
  /// * [forceTranscode] - Whether to force transcoding of the library item.
  /// * [supportedMimeTypes] - The supported mime types for the device.
  /// * [mediaPlayer] - The media player to use.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlaybackSessionExpanded] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlaybackSessionExpanded>> playLibraryItemPodcastEpisode({
    required String id,
    required String episodeId,
    DeviceInfo? deviceInfo,
    bool? forceDirectPlay,
    bool? forceTranscode,
    BuiltList<String>? supportedMimeTypes,
    String? mediaPlayer,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/items/{id}/play/{episodeId}'
        .replaceAll(
            '{' r'id' '}',
            encodeQueryParameter(_serializers, id, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'episodeId' '}',
            encodeQueryParameter(
                    _serializers, episodeId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'BearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (deviceInfo != null)
        r'deviceInfo': encodeQueryParameter(
            _serializers, deviceInfo, const FullType(DeviceInfo)),
      if (forceDirectPlay != null)
        r'forceDirectPlay': encodeQueryParameter(
            _serializers, forceDirectPlay, const FullType(bool)),
      if (forceTranscode != null)
        r'forceTranscode': encodeQueryParameter(
            _serializers, forceTranscode, const FullType(bool)),
      if (supportedMimeTypes != null)
        r'supportedMimeTypes': encodeCollectionQueryParameter<String>(
          _serializers,
          supportedMimeTypes,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (mediaPlayer != null)
        r'mediaPlayer': encodeQueryParameter(
            _serializers, mediaPlayer, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PlaybackSessionExpanded? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(PlaybackSessionExpanded),
            ) as PlaybackSessionExpanded;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PlaybackSessionExpanded>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
