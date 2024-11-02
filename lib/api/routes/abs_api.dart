import 'package:abs_flutter/api/routes/interceptors/bearer_auth_interceptor.dart';
import 'package:abs_flutter/api/routes/interceptors/o_auth_interceptor.dart';
import 'package:abs_flutter/api/routes/me_api.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:dio/dio.dart';

class ABSApi {
  static const String basePath = r'http://localhost:3000';

  final Dio dio;

  ABSApi({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  }) : dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors != null) {
      this.dio.interceptors.addAll(interceptors);
    } else {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BearerAuthInterceptor(),
      ]);
    }
  }

  void setOAuthToken(String name, String token) {
    if (dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  static Future<Response<T>> makeApiPostRequest<T>({
    required String route,
    required Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> bodyData,
    required Dio dio,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
  }) async {
    // Define the request options, including headers and security details
    final options = Options(
      method: 'POST',
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
      contentType: 'application/json',
    );

    // Attempt the request and handle response parsing
    try {
      final response = await dio.request<Object>(
        route,
        data: bodyData,
        options: options,
        cancelToken: cancelToken,
      );

      T? responseData;
      final rawResponse = response.data;
      responseData = rawResponse == null
          ? null
          : fromJson(rawResponse as Map<String, dynamic>);

      return Response<T>(
        data: responseData,
        headers: response.headers,
        isRedirect: response.isRedirect,
        requestOptions: response.requestOptions,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    } catch (error, stackTrace) {
      log("$error\n$stackTrace", name: '$route');
      throw DioException(
        requestOptions: RequestOptions(path: route),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  MeApi getMeApi() {
    return MeApi(dio);
  }
}
