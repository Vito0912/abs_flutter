import 'package:abs_flutter/provider/log_provider.dart';

import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:dio/dio.dart';

class ABSInterceptor extends Interceptor {
  final ref;

  const ABSInterceptor(this.ref);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionTimeout) {
      ref.read(connectionProvider.notifier).setServerState(false);
    }
    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      ref.read(connectionProvider.notifier).setServerState(true);
    }
    return handler.next(response);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Request: ${options.uri.toString()}');
    return handler.next(options);
  }
}
