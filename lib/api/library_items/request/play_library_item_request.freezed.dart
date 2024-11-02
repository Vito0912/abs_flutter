// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_library_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayLibraryItemRequest _$PlayLibraryItemRequestFromJson(
    Map<String, dynamic> json) {
  return _PlayLibraryItemRequest.fromJson(json);
}

/// @nodoc
mixin _$PlayLibraryItemRequest {
  @JsonKey(name: "deviceInfo")
  DeviceInfo get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "forceDirectPlay")
  bool? get forceDirectPlay => throw _privateConstructorUsedError;
  @JsonKey(name: "forceTranscode")
  bool? get forceTranscode => throw _privateConstructorUsedError;
  @JsonKey(name: "supportedMimeTypes")
  List<String>? get supportedMimeTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaPlayer")
  String get mediaPlayer => throw _privateConstructorUsedError;

  /// Serializes this PlayLibraryItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayLibraryItemRequestCopyWith<PlayLibraryItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayLibraryItemRequestCopyWith<$Res> {
  factory $PlayLibraryItemRequestCopyWith(PlayLibraryItemRequest value,
          $Res Function(PlayLibraryItemRequest) then) =
      _$PlayLibraryItemRequestCopyWithImpl<$Res, PlayLibraryItemRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "deviceInfo") DeviceInfo deviceInfo,
      @JsonKey(name: "forceDirectPlay") bool? forceDirectPlay,
      @JsonKey(name: "forceTranscode") bool? forceTranscode,
      @JsonKey(name: "supportedMimeTypes") List<String>? supportedMimeTypes,
      @JsonKey(name: "mediaPlayer") String mediaPlayer});

  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class _$PlayLibraryItemRequestCopyWithImpl<$Res,
        $Val extends PlayLibraryItemRequest>
    implements $PlayLibraryItemRequestCopyWith<$Res> {
  _$PlayLibraryItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
    Object? forceDirectPlay = freezed,
    Object? forceTranscode = freezed,
    Object? supportedMimeTypes = freezed,
    Object? mediaPlayer = null,
  }) {
    return _then(_value.copyWith(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      forceDirectPlay: freezed == forceDirectPlay
          ? _value.forceDirectPlay
          : forceDirectPlay // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceTranscode: freezed == forceTranscode
          ? _value.forceTranscode
          : forceTranscode // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportedMimeTypes: freezed == supportedMimeTypes
          ? _value.supportedMimeTypes
          : supportedMimeTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaPlayer: null == mediaPlayer
          ? _value.mediaPlayer
          : mediaPlayer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get deviceInfo {
    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayLibraryItemRequestImplCopyWith<$Res>
    implements $PlayLibraryItemRequestCopyWith<$Res> {
  factory _$$PlayLibraryItemRequestImplCopyWith(
          _$PlayLibraryItemRequestImpl value,
          $Res Function(_$PlayLibraryItemRequestImpl) then) =
      __$$PlayLibraryItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "deviceInfo") DeviceInfo deviceInfo,
      @JsonKey(name: "forceDirectPlay") bool? forceDirectPlay,
      @JsonKey(name: "forceTranscode") bool? forceTranscode,
      @JsonKey(name: "supportedMimeTypes") List<String>? supportedMimeTypes,
      @JsonKey(name: "mediaPlayer") String mediaPlayer});

  @override
  $DeviceInfoCopyWith<$Res> get deviceInfo;
}

/// @nodoc
class __$$PlayLibraryItemRequestImplCopyWithImpl<$Res>
    extends _$PlayLibraryItemRequestCopyWithImpl<$Res,
        _$PlayLibraryItemRequestImpl>
    implements _$$PlayLibraryItemRequestImplCopyWith<$Res> {
  __$$PlayLibraryItemRequestImplCopyWithImpl(
      _$PlayLibraryItemRequestImpl _value,
      $Res Function(_$PlayLibraryItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
    Object? forceDirectPlay = freezed,
    Object? forceTranscode = freezed,
    Object? supportedMimeTypes = freezed,
    Object? mediaPlayer = null,
  }) {
    return _then(_$PlayLibraryItemRequestImpl(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      forceDirectPlay: freezed == forceDirectPlay
          ? _value.forceDirectPlay
          : forceDirectPlay // ignore: cast_nullable_to_non_nullable
              as bool?,
      forceTranscode: freezed == forceTranscode
          ? _value.forceTranscode
          : forceTranscode // ignore: cast_nullable_to_non_nullable
              as bool?,
      supportedMimeTypes: freezed == supportedMimeTypes
          ? _value._supportedMimeTypes
          : supportedMimeTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaPlayer: null == mediaPlayer
          ? _value.mediaPlayer
          : mediaPlayer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayLibraryItemRequestImpl implements _PlayLibraryItemRequest {
  const _$PlayLibraryItemRequestImpl(
      {@JsonKey(name: "deviceInfo") required this.deviceInfo,
      @JsonKey(name: "forceDirectPlay") this.forceDirectPlay = false,
      @JsonKey(name: "forceTranscode") this.forceTranscode = false,
      @JsonKey(name: "supportedMimeTypes")
      final List<String>? supportedMimeTypes = const [],
      @JsonKey(name: "mediaPlayer") required this.mediaPlayer})
      : _supportedMimeTypes = supportedMimeTypes;

  factory _$PlayLibraryItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayLibraryItemRequestImplFromJson(json);

  @override
  @JsonKey(name: "deviceInfo")
  final DeviceInfo deviceInfo;
  @override
  @JsonKey(name: "forceDirectPlay")
  final bool? forceDirectPlay;
  @override
  @JsonKey(name: "forceTranscode")
  final bool? forceTranscode;
  final List<String>? _supportedMimeTypes;
  @override
  @JsonKey(name: "supportedMimeTypes")
  List<String>? get supportedMimeTypes {
    final value = _supportedMimeTypes;
    if (value == null) return null;
    if (_supportedMimeTypes is EqualUnmodifiableListView)
      return _supportedMimeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "mediaPlayer")
  final String mediaPlayer;

  @override
  String toString() {
    return 'PlayLibraryItemRequest(deviceInfo: $deviceInfo, forceDirectPlay: $forceDirectPlay, forceTranscode: $forceTranscode, supportedMimeTypes: $supportedMimeTypes, mediaPlayer: $mediaPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayLibraryItemRequestImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.forceDirectPlay, forceDirectPlay) ||
                other.forceDirectPlay == forceDirectPlay) &&
            (identical(other.forceTranscode, forceTranscode) ||
                other.forceTranscode == forceTranscode) &&
            const DeepCollectionEquality()
                .equals(other._supportedMimeTypes, _supportedMimeTypes) &&
            (identical(other.mediaPlayer, mediaPlayer) ||
                other.mediaPlayer == mediaPlayer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deviceInfo,
      forceDirectPlay,
      forceTranscode,
      const DeepCollectionEquality().hash(_supportedMimeTypes),
      mediaPlayer);

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayLibraryItemRequestImplCopyWith<_$PlayLibraryItemRequestImpl>
      get copyWith => __$$PlayLibraryItemRequestImplCopyWithImpl<
          _$PlayLibraryItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayLibraryItemRequestImplToJson(
      this,
    );
  }
}

abstract class _PlayLibraryItemRequest implements PlayLibraryItemRequest {
  const factory _PlayLibraryItemRequest(
          {@JsonKey(name: "deviceInfo") required final DeviceInfo deviceInfo,
          @JsonKey(name: "forceDirectPlay") final bool? forceDirectPlay,
          @JsonKey(name: "forceTranscode") final bool? forceTranscode,
          @JsonKey(name: "supportedMimeTypes")
          final List<String>? supportedMimeTypes,
          @JsonKey(name: "mediaPlayer") required final String mediaPlayer}) =
      _$PlayLibraryItemRequestImpl;

  factory _PlayLibraryItemRequest.fromJson(Map<String, dynamic> json) =
      _$PlayLibraryItemRequestImpl.fromJson;

  @override
  @JsonKey(name: "deviceInfo")
  DeviceInfo get deviceInfo;
  @override
  @JsonKey(name: "forceDirectPlay")
  bool? get forceDirectPlay;
  @override
  @JsonKey(name: "forceTranscode")
  bool? get forceTranscode;
  @override
  @JsonKey(name: "supportedMimeTypes")
  List<String>? get supportedMimeTypes;
  @override
  @JsonKey(name: "mediaPlayer")
  String get mediaPlayer;

  /// Create a copy of PlayLibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayLibraryItemRequestImplCopyWith<_$PlayLibraryItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
