// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_e_reader_devices_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEReaderDevicesRequest extends UpdateEReaderDevicesRequest {
  @override
  final BuiltList<EreaderDeviceObject>? ereaderDevices;

  factory _$UpdateEReaderDevicesRequest(
          [void Function(UpdateEReaderDevicesRequestBuilder)? updates]) =>
      (new UpdateEReaderDevicesRequestBuilder()..update(updates))._build();

  _$UpdateEReaderDevicesRequest._({this.ereaderDevices}) : super._();

  @override
  UpdateEReaderDevicesRequest rebuild(
          void Function(UpdateEReaderDevicesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateEReaderDevicesRequestBuilder toBuilder() =>
      new UpdateEReaderDevicesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateEReaderDevicesRequest &&
        ereaderDevices == other.ereaderDevices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ereaderDevices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateEReaderDevicesRequest')
          ..add('ereaderDevices', ereaderDevices))
        .toString();
  }
}

class UpdateEReaderDevicesRequestBuilder
    implements
        Builder<UpdateEReaderDevicesRequest,
            UpdateEReaderDevicesRequestBuilder> {
  _$UpdateEReaderDevicesRequest? _$v;

  ListBuilder<EreaderDeviceObject>? _ereaderDevices;
  ListBuilder<EreaderDeviceObject> get ereaderDevices =>
      _$this._ereaderDevices ??= new ListBuilder<EreaderDeviceObject>();
  set ereaderDevices(ListBuilder<EreaderDeviceObject>? ereaderDevices) =>
      _$this._ereaderDevices = ereaderDevices;

  UpdateEReaderDevicesRequestBuilder() {
    UpdateEReaderDevicesRequest._defaults(this);
  }

  UpdateEReaderDevicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ereaderDevices = $v.ereaderDevices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateEReaderDevicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateEReaderDevicesRequest;
  }

  @override
  void update(void Function(UpdateEReaderDevicesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateEReaderDevicesRequest build() => _build();

  _$UpdateEReaderDevicesRequest _build() {
    _$UpdateEReaderDevicesRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateEReaderDevicesRequest._(
              ereaderDevices: _ereaderDevices?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ereaderDevices';
        _ereaderDevices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateEReaderDevicesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
