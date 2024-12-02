import 'dart:convert';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:sembast/sembast.dart';

class CacheInterceptor extends Interceptor {
  final List<RoutePattern> _cacheableRoutes = [
    RoutePattern('/api/libraries', const Duration(days: 7)),
    RoutePattern('/api/libraries/{uuidv4}', const Duration(days: 7)),
    RoutePattern(
        '/api/libraries/{uuidv4}/personalized', const Duration(days: 7)),
    RoutePattern('/api/libraries/{uuidv4}/items', const Duration(days: 7)),
    RoutePattern('/api/items/{uuidv4}', const Duration(days: 7)),
    RoutePattern('/api/items/{uuidv4}/{uuidv4}', const Duration(days: 7)),
    RoutePattern('/api/libraries/{uuidv4}/filterdata', const Duration(days: 7)),
    RoutePattern('/api/libraries/{uuidv4}/series', const Duration(days: 7)),
    RoutePattern('/api/me', const Duration(days: 1), aggressiveCache: true),
  ];

  final StoreRef<String, dynamic> _store = StoreRef.main();

  final ref;

  CacheInterceptor(this.ref);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra['noCache'] == true) return handler.next(options);

    final matchingRoute = _getMatchingRoute(options);

    if (matchingRoute != null) {
      final String cacheKey = _getCacheKey(options.uri);
      final cachedData = await _store.record(cacheKey).get(db);

      if (cachedData != null) {
        final DateTime cachedTime = DateTime.parse(cachedData['timestamp']);
        final DateTime now = DateTime.now();

        if (now.difference(cachedTime) < matchingRoute.cacheDuration) {
          final decodedHeaders =
              jsonDecode(cachedData['headers']) as Map<String, dynamic>;
          final headers =
              decodedHeaders.map<String, List<String>>((key, dynamic value) {
            if (value is List) {
              return MapEntry(key, value.cast<String>());
            } else {
              throw Exception("Expected a List<String> but got something else");
            }
          });

          log('Cache hit: ${options.uri.toString()}', name: 'CacheInterceptor');
          handler.resolve(Response(
            requestOptions: options,
            data: cachedData['data'],
            statusCode: cachedData['statusCode'],
            statusMessage: cachedData['statusMessage'],
            headers: Headers.fromMap(headers),
          ));

          if (boostLoading) {
            final newOptions = Options(
              method: options.method,
              headers: options.headers,
              responseType: options.responseType,
              extra: options.extra,
            );
            newOptions.extra?['noCache'] = true;

            final refreshedOptions = options.copyWith(
              extra: newOptions.extra,
            );

            final Dio dio = Dio();
            dio.interceptors.add(this);

            dio.fetch(refreshedOptions);
          }
          return;
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
    final matchingRoute = _getMatchingRoute(response.requestOptions);

    if (matchingRoute != null &&
        response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      final String cacheKey = _getCacheKey(response.requestOptions.uri);
      log('Caching: ${response.requestOptions.uri.toString()}',
          name: 'CacheInterceptor');
      await _store.record(cacheKey).put(db, {
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
    final matchingRoute = _getMatchingRoute(err.requestOptions);

    if (matchingRoute != null) {
      final String cacheKey = _getCacheKey(err.requestOptions.uri);
      _store.record(cacheKey).get(db).then((cachedData) {
        if (cachedData != null) {
          try {
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
          } catch (e) {
            log('Error while serving from cache: $e', name: 'CacheInterceptor');
            return handler.next(err);
          }
        } else {
          return handler.next(err);
        }
      });
    } else {
      return handler.next(err);
    }
  }

  RoutePattern? _getMatchingRoute(RequestOptions options) {
    if (!cachingEnabled) return null;
    for (var routePattern in _cacheableRoutes) {
      if (routePattern.matches(options.path) && options.method == 'GET') {
        if (routePattern.aggressiveCache && !aggressiveCaching) {
          return null;
        }
        return routePattern;
      }
    }
    return null;
  }

  String _getCacheKey(Uri uri) {
    final user = ref.read(currentUserProvider);
    return '${user?.id}${uri.toString()}';
  }
}

class RoutePattern {
  final String pattern;
  final Duration cacheDuration;
  final bool aggressiveCache;

  RoutePattern(this.pattern, this.cacheDuration,
      {this.aggressiveCache = false});

  bool matches(String path) {
    final patternSegments = pattern.split('/');
    final pathSegments = Uri.parse(path).path.split('/');

    if (patternSegments.length != pathSegments.length) {
      return false;
    }

    for (var i = 0; i < patternSegments.length; i++) {
      if (patternSegments[i].startsWith('{') &&
          patternSegments[i].endsWith('}')) {
        continue;
      }
      if (patternSegments[i] != pathSegments[i]) {
        return false;
      }
    }

    return true;
  }
}
