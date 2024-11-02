import 'package:dio/dio.dart';

abstract class AuthInterceptor extends Interceptor {
  List<Map<String, String>> getAuthInfo(
      RequestOptions route, bool Function(Map<String, String> secure) handles) {
    if (route.extra.containsKey('secure')) {
      final auth = route.extra['secure'] as List<Map<String, String>>;
      return auth.where((secure) => handles(secure)).toList();
    }
    return [];
  }
}
