import 'package:abs_flutter/api/me/server_settings.dart';
import 'package:abs_flutter/api/me/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login with _$Login {
  const factory Login({
    @JsonKey(name: "user") required User user,
    @JsonKey(name: "userDefaultLibraryId") required String userDefaultLibraryId,
    @JsonKey(name: "serverSettings") required ServerSettings serverSettings,
    @JsonKey(name: "Source") required String source,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
