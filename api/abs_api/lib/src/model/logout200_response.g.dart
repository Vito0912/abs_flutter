// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Logout200Response extends Logout200Response {
  @override
  final String? message;

  factory _$Logout200Response(
          [void Function(Logout200ResponseBuilder)? updates]) =>
      (new Logout200ResponseBuilder()..update(updates))._build();

  _$Logout200Response._({this.message}) : super._();

  @override
  Logout200Response rebuild(void Function(Logout200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Logout200ResponseBuilder toBuilder() =>
      new Logout200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Logout200Response && message == other.message;
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
    return (newBuiltValueToStringHelper(r'Logout200Response')
          ..add('message', message))
        .toString();
  }
}

class Logout200ResponseBuilder
    implements Builder<Logout200Response, Logout200ResponseBuilder> {
  _$Logout200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Logout200ResponseBuilder() {
    Logout200Response._defaults(this);
  }

  Logout200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Logout200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Logout200Response;
  }

  @override
  void update(void Function(Logout200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Logout200Response build() => _build();

  _$Logout200Response _build() {
    final _$result = _$v ?? new _$Logout200Response._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
