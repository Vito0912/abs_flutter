import 'dart:convert';
import 'dart:developer';

import 'package:abs_flutter/globals.dart';
import 'package:dio/dio.dart';
import 'package:sembast/sembast.dart';

class CacheInterceptor extends Interceptor {
  final Set<String> _domains = <String>{'/api/libraries', '/api/items'};

  final StoreRef<String, dynamic> _store = StoreRef.main();

  final Duration cacheDuration = const Duration(seconds: 100000);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_shouldCache(options)) {
      final cachedData = await _store.record(options.uri.toString()).get(db);

      if (cachedData != null) {
        final DateTime cachedTime = DateTime.parse(cachedData['timestamp']);
        final DateTime now = DateTime.now();

        if (now.difference(cachedTime) < cacheDuration) {
          var decodedHeaders =
              jsonDecode(cachedData['headers']) as Map<String, dynamic>;

          var headers =
              decodedHeaders.map<String, List<String>>((key, dynamic value) {
            if (value is List) {
              return MapEntry(key, value.cast<String>());
            } else {
              throw Exception("Expected a List<String> but got something else");
            }
          });
          return handler.resolve(Response(
            requestOptions: options,
            data: cachedData['data'],
            statusCode: cachedData['statusCode'],
            statusMessage: cachedData['statusMessage'],
            headers: Headers.fromMap(headers),
          ));
        } else {
          log('Cache expired: ${options.uri.toString()}',
              name: 'CacheInterceptor');
        }
      }
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (_shouldCache(response.requestOptions) &&
        response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      log('Caching: ${response.requestOptions.uri.toString()}',
          name: 'CacheInterceptor');
      await _store.record(response.requestOptions.uri.toString()).put(db, {
        'data': response.data,
        'statusCode': response.statusCode,
        'statusMessage': response.statusMessage,
        'headers': jsonEncode(response.headers.map),
        'timestamp': DateTime.now().toIso8601String(),
      });
    }

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // If there is an error, check if the request is cached and return the cached data if found
    if (_shouldCache(err.requestOptions)) {
      _store
          .record(err.requestOptions.uri.toString())
          .get(db)
          .then((cachedData) {
        if (cachedData != null) {
          return handler.resolve(Response(
            requestOptions: err.requestOptions,
            data: cachedData['data'],
            statusCode: cachedData['statusCode'],
            statusMessage: cachedData['statusMessage'],
            headers: Headers.fromMap(
              cachedData['headers'].map<String, List<String>>(
                (key, value) => MapEntry(
                  key,
                  List<String>.from(value),
                ),
              ),
            ),
          ));
        } else {
          return handler.next(err);
        }
      });
    } else {
      return handler.next(err);
    }
  }

  bool _shouldCache(RequestOptions options) {
    return _domains.any(options.path.contains) && options.method == 'GET';
  }
}
