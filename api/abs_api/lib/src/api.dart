//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:abs_api/src/serializers.dart';
import 'package:abs_api/src/auth/api_key_auth.dart';
import 'package:abs_api/src/auth/basic_auth.dart';
import 'package:abs_api/src/auth/bearer_auth.dart';
import 'package:abs_api/src/auth/oauth.dart';
import 'package:abs_api/src/api/auth_api.dart';
import 'package:abs_api/src/api/authors_api.dart';
import 'package:abs_api/src/api/email_api.dart';
import 'package:abs_api/src/api/libraries_api.dart';
import 'package:abs_api/src/api/library_item_api.dart';
import 'package:abs_api/src/api/me_api.dart';
import 'package:abs_api/src/api/notification_api.dart';
import 'package:abs_api/src/api/podcasts_api.dart';
import 'package:abs_api/src/api/series_api.dart';
import 'package:abs_api/src/api/session_api.dart';

class AbsApi {
  static const String basePath = r'http://localhost:3000';

  final Dio dio;
  final Serializers serializers;

  AbsApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get AuthorsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthorsApi getAuthorsApi() {
    return AuthorsApi(dio, serializers);
  }

  /// Get EmailApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EmailApi getEmailApi() {
    return EmailApi(dio, serializers);
  }

  /// Get LibrariesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LibrariesApi getLibrariesApi() {
    return LibrariesApi(dio, serializers);
  }

  /// Get LibraryItemApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LibraryItemApi getLibraryItemApi() {
    return LibraryItemApi(dio, serializers);
  }

  /// Get MeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MeApi getMeApi() {
    return MeApi(dio, serializers);
  }

  /// Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationApi getNotificationApi() {
    return NotificationApi(dio, serializers);
  }

  /// Get PodcastsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PodcastsApi getPodcastsApi() {
    return PodcastsApi(dio, serializers);
  }

  /// Get SeriesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SeriesApi getSeriesApi() {
    return SeriesApi(dio, serializers);
  }

  /// Get SessionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionApi getSessionApi() {
    return SessionApi(dio, serializers);
  }
}
