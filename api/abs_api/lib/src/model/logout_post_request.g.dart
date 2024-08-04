// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogoutPostRequest extends LogoutPostRequest {
  @override
  final String? socketId;

  factory _$LogoutPostRequest(
          [void Function(LogoutPostRequestBuilder)? updates]) =>
      (new LogoutPostRequestBuilder()..update(updates))._build();

  _$LogoutPostRequest._({this.socketId}) : super._();

  @override
  LogoutPostRequest rebuild(void Function(LogoutPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutPostRequestBuilder toBuilder() =>
      new LogoutPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutPostRequest && socketId == other.socketId;
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
    return (newBuiltValueToStringHelper(r'LogoutPostRequest')
          ..add('socketId', socketId))
        .toString();
  }
}

class LogoutPostRequestBuilder
    implements Builder<LogoutPostRequest, LogoutPostRequestBuilder> {
  _$LogoutPostRequest? _$v;

  String? _socketId;
  String? get socketId => _$this._socketId;
  set socketId(String? socketId) => _$this._socketId = socketId;

  LogoutPostRequestBuilder() {
    LogoutPostRequest._defaults(this);
  }

  LogoutPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _socketId = $v.socketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutPostRequest;
  }

  @override
  void update(void Function(LogoutPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoutPostRequest build() => _build();

  _$LogoutPostRequest _build() {
    final _$result = _$v ?? new _$LogoutPostRequest._(socketId: socketId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
