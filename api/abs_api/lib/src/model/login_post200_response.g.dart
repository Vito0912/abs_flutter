// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginPost200Response extends LoginPost200Response {
  @override
  final User? user;

  factory _$LoginPost200Response(
          [void Function(LoginPost200ResponseBuilder)? updates]) =>
      (new LoginPost200ResponseBuilder()..update(updates))._build();

  _$LoginPost200Response._({this.user}) : super._();

  @override
  LoginPost200Response rebuild(
          void Function(LoginPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginPost200ResponseBuilder toBuilder() =>
      new LoginPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginPost200Response && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginPost200Response')
          ..add('user', user))
        .toString();
  }
}

class LoginPost200ResponseBuilder
    implements Builder<LoginPost200Response, LoginPost200ResponseBuilder> {
  _$LoginPost200Response? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  LoginPost200ResponseBuilder() {
    LoginPost200Response._defaults(this);
  }

  LoginPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginPost200Response;
  }

  @override
  void update(void Function(LoginPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginPost200Response build() => _build();

  _$LoginPost200Response _build() {
    _$LoginPost200Response _$result;
    try {
      _$result = _$v ?? new _$LoginPost200Response._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
