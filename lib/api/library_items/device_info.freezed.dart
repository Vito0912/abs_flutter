// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfo {
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "clientName")
  String? get clientName => throw _privateConstructorUsedError;
  @JsonKey(name: "clientVersion")
  String? get clientVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "manufacturer")
  String? get manufacturer => throw _privateConstructorUsedError;
  @JsonKey(name: "model")
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: "sdkVersion")
  String? get sdkVersion => throw _privateConstructorUsedError;

  /// Serializes this DeviceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "clientName") String? clientName,
      @JsonKey(name: "clientVersion") String? clientVersion,
      @JsonKey(name: "manufacturer") String? manufacturer,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "sdkVersion") String? sdkVersion});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? clientName = freezed,
    Object? clientVersion = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? sdkVersion = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientVersion: freezed == clientVersion
          ? _value.clientVersion
          : clientVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkVersion: freezed == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "clientName") String? clientName,
      @JsonKey(name: "clientVersion") String? clientVersion,
      @JsonKey(name: "manufacturer") String? manufacturer,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "sdkVersion") String? sdkVersion});
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? clientName = freezed,
    Object? clientVersion = freezed,
    Object? manufacturer = freezed,
    Object? model = freezed,
    Object? sdkVersion = freezed,
  }) {
    return _then(_$DeviceInfoImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      clientVersion: freezed == clientVersion
          ? _value.clientVersion
          : clientVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      sdkVersion: freezed == sdkVersion
          ? _value.sdkVersion
          : sdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoImpl implements _DeviceInfo {
  const _$DeviceInfoImpl(
      {@JsonKey(name: "deviceId") this.deviceId,
      @JsonKey(name: "clientName") this.clientName,
      @JsonKey(name: "clientVersion") this.clientVersion,
      @JsonKey(name: "manufacturer") this.manufacturer,
      @JsonKey(name: "model") this.model,
      @JsonKey(name: "sdkVersion") this.sdkVersion});

  factory _$DeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoImplFromJson(json);

  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "clientName")
  final String? clientName;
  @override
  @JsonKey(name: "clientVersion")
  final String? clientVersion;
  @override
  @JsonKey(name: "manufacturer")
  final String? manufacturer;
  @override
  @JsonKey(name: "model")
  final String? model;
  @override
  @JsonKey(name: "sdkVersion")
  final String? sdkVersion;

  @override
  String toString() {
    return 'DeviceInfo(deviceId: $deviceId, clientName: $clientName, clientVersion: $clientVersion, manufacturer: $manufacturer, model: $model, sdkVersion: $sdkVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.clientVersion, clientVersion) ||
                other.clientVersion == clientVersion) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.sdkVersion, sdkVersion) ||
                other.sdkVersion == sdkVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, clientName,
      clientVersion, manufacturer, model, sdkVersion);

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfo implements DeviceInfo {
  const factory _DeviceInfo(
          {@JsonKey(name: "deviceId") final String? deviceId,
          @JsonKey(name: "clientName") final String? clientName,
          @JsonKey(name: "clientVersion") final String? clientVersion,
          @JsonKey(name: "manufacturer") final String? manufacturer,
          @JsonKey(name: "model") final String? model,
          @JsonKey(name: "sdkVersion") final String? sdkVersion}) =
      _$DeviceInfoImpl;

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoImpl.fromJson;

  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "clientName")
  String? get clientName;
  @override
  @JsonKey(name: "clientVersion")
  String? get clientVersion;
  @override
  @JsonKey(name: "manufacturer")
  String? get manufacturer;
  @override
  @JsonKey(name: "model")
  String? get model;
  @override
  @JsonKey(name: "sdkVersion")
  String? get sdkVersion;

  /// Create a copy of DeviceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
