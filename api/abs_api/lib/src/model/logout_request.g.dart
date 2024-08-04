// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogoutRequest extends LogoutRequest {
  @override
  final String? socketId;

  factory _$LogoutRequest([void Function(LogoutRequestBuilder)? updates]) =>
      (new LogoutRequestBuilder()..update(updates))._build();

  _$LogoutRequest._({this.socketId}) : super._();

  @override
  LogoutRequest rebuild(void Function(LogoutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutRequestBuilder toBuilder() => new LogoutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutRequest && socketId == other.socketId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, socketId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogoutRequest')
          ..add('socketId', socketId))
        .toString();
  }
}

class LogoutRequestBuilder
    implements Builder<LogoutRequest, LogoutRequestBuilder> {
  _$LogoutRequest? _$v;

  String? _socketId;
  String? get socketId => _$this._socketId;
  set socketId(String? socketId) => _$this._socketId = socketId;

  LogoutRequestBuilder() {
    LogoutRequest._defaults(this);
  }

  LogoutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _socketId = $v.socketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutRequest;
  }

  @override
  void update(void Function(LogoutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoutRequest build() => _build();

  _$LogoutRequest _build() {
    final _$result = _$v ?? new _$LogoutRequest._(socketId: socketId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
