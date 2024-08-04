// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_e_book_to_device_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendEBookToDeviceRequest extends SendEBookToDeviceRequest {
  @override
  final String? libraryItemId;
  @override
  final String? deviceName;

  factory _$SendEBookToDeviceRequest(
          [void Function(SendEBookToDeviceRequestBuilder)? updates]) =>
      (new SendEBookToDeviceRequestBuilder()..update(updates))._build();

  _$SendEBookToDeviceRequest._({this.libraryItemId, this.deviceName})
      : super._();

  @override
  SendEBookToDeviceRequest rebuild(
          void Function(SendEBookToDeviceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendEBookToDeviceRequestBuilder toBuilder() =>
      new SendEBookToDeviceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendEBookToDeviceRequest &&
        libraryItemId == other.libraryItemId &&
        deviceName == other.deviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendEBookToDeviceRequest')
          ..add('libraryItemId', libraryItemId)
          ..add('deviceName', deviceName))
        .toString();
  }
}

class SendEBookToDeviceRequestBuilder
    implements
        Builder<SendEBookToDeviceRequest, SendEBookToDeviceRequestBuilder> {
  _$SendEBookToDeviceRequest? _$v;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(String? deviceName) => _$this._deviceName = deviceName;

  SendEBookToDeviceRequestBuilder() {
    SendEBookToDeviceRequest._defaults(this);
  }

  SendEBookToDeviceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryItemId = $v.libraryItemId;
      _deviceName = $v.deviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendEBookToDeviceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendEBookToDeviceRequest;
  }

  @override
  void update(void Function(SendEBookToDeviceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendEBookToDeviceRequest build() => _build();

  _$SendEBookToDeviceRequest _build() {
    final _$result = _$v ??
        new _$SendEBookToDeviceRequest._(
            libraryItemId: libraryItemId, deviceName: deviceName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
