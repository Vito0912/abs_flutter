// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogoutPost200Response extends LogoutPost200Response {
  @override
  final String? message;

  factory _$LogoutPost200Response(
          [void Function(LogoutPost200ResponseBuilder)? updates]) =>
      (new LogoutPost200ResponseBuilder()..update(updates))._build();

  _$LogoutPost200Response._({this.message}) : super._();

  @override
  LogoutPost200Response rebuild(
          void Function(LogoutPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutPost200ResponseBuilder toBuilder() =>
      new LogoutPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutPost200Response && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogoutPost200Response')
          ..add('message', message))
        .toString();
  }
}

class LogoutPost200ResponseBuilder
    implements Builder<LogoutPost200Response, LogoutPost200ResponseBuilder> {
  _$LogoutPost200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LogoutPost200ResponseBuilder() {
    LogoutPost200Response._defaults(this);
  }

  LogoutPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutPost200Response;
  }

  @override
  void update(void Function(LogoutPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoutPost200Response build() => _build();

  _$LogoutPost200Response _build() {
    final _$result = _$v ?? new _$LogoutPost200Response._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
