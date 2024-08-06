// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceInfo extends DeviceInfo {
  @override
  final String? deviceId;
  @override
  final String? clientVersion;
  @override
  final String? clientName;
  @override
  final String? manufacturer;
  @override
  final String? model;
  @override
  final String? sdkVersion;

  factory _$DeviceInfo([void Function(DeviceInfoBuilder)? updates]) =>
      (new DeviceInfoBuilder()..update(updates))._build();

  _$DeviceInfo._(
      {this.deviceId,
      this.clientVersion,
      this.clientName,
      this.manufacturer,
      this.model,
      this.sdkVersion})
      : super._();

  @override
  DeviceInfo rebuild(void Function(DeviceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceInfoBuilder toBuilder() => new DeviceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceInfo &&
        deviceId == other.deviceId &&
        clientVersion == other.clientVersion &&
        clientName == other.clientName &&
        manufacturer == other.manufacturer &&
        model == other.model &&
        sdkVersion == other.sdkVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, clientVersion.hashCode);
    _$hash = $jc(_$hash, clientName.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, sdkVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceInfo')
          ..add('deviceId', deviceId)
          ..add('clientVersion', clientVersion)
          ..add('clientName', clientName)
          ..add('manufacturer', manufacturer)
          ..add('model', model)
          ..add('sdkVersion', sdkVersion))
        .toString();
  }
}

class DeviceInfoBuilder implements Builder<DeviceInfo, DeviceInfoBuilder> {
  _$DeviceInfo? _$v;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _clientVersion;
  String? get clientVersion => _$this._clientVersion;
  set clientVersion(String? clientVersion) =>
      _$this._clientVersion = clientVersion;

  String? _clientName;
  String? get clientName => _$this._clientName;
  set clientName(String? clientName) => _$this._clientName = clientName;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _sdkVersion;
  String? get sdkVersion => _$this._sdkVersion;
  set sdkVersion(String? sdkVersion) => _$this._sdkVersion = sdkVersion;

  DeviceInfoBuilder() {
    DeviceInfo._defaults(this);
  }

  DeviceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _clientVersion = $v.clientVersion;
      _clientName = $v.clientName;
      _manufacturer = $v.manufacturer;
      _model = $v.model;
      _sdkVersion = $v.sdkVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceInfo;
  }

  @override
  void update(void Function(DeviceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceInfo build() => _build();

  _$DeviceInfo _build() {
    final _$result = _$v ??
        new _$DeviceInfo._(
            deviceId: deviceId,
            clientVersion: clientVersion,
            clientName: clientName,
            manufacturer: manufacturer,
            model: model,
            sdkVersion: sdkVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
