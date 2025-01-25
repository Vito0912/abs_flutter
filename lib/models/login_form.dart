import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const LoginFormState._();

  const factory LoginFormState({
    @Default('') String username,
    @Default('') String password,
    @Default('https://') String protocol,
    @Default('') String domain,
    @Default('443') String port,
    @Default('audiobookshelf') String? subdirectory,
    @Default(FormStatus.idle) FormStatus status,
    String? errorMessage,
  }) = _LoginFormState;

  bool get isValid {
    return protocol.isNotEmpty &&
        domain.isNotEmpty &&
        port.isNotEmpty &&
        username.isNotEmpty &&
        password.isNotEmpty;
  }
}

enum FormStatus { idle, loading, success, error }
