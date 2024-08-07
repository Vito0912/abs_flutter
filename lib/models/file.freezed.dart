// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DownloadInfo _$DownloadInfoFromJson(Map<String, dynamic> json) {
  return _DownloadInfo.fromJson(json);
}

/// @nodoc
mixin _$DownloadInfo {
  int get index => throw _privateConstructorUsedError;
  set index(int value) => throw _privateConstructorUsedError;
  MediaTypeDownload get type => throw _privateConstructorUsedError;
  set type(MediaTypeDownload value) => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  set filename(String value) => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  set format(String value) => throw _privateConstructorUsedError;
  String get libraryId => throw _privateConstructorUsedError;
  set libraryId(String value) => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  set itemId(String value) => throw _privateConstructorUsedError;
  num get size => throw _privateConstructorUsedError;
  set size(num value) => throw _privateConstructorUsedError;
  num? get duration => throw _privateConstructorUsedError;
  set duration(num? value) => throw _privateConstructorUsedError;
  int? get bitrate => throw _privateConstructorUsedError;
  set bitrate(int? value) => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  set codec(String? value) => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  set mimeType(String? value) => throw _privateConstructorUsedError;
  String? get embeddedCoverArt => throw _privateConstructorUsedError;
  set embeddedCoverArt(String? value) => throw _privateConstructorUsedError;

  /// Serializes this DownloadInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadInfoCopyWith<DownloadInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadInfoCopyWith<$Res> {
  factory $DownloadInfoCopyWith(
          DownloadInfo value, $Res Function(DownloadInfo) then) =
      _$DownloadInfoCopyWithImpl<$Res, DownloadInfo>;
  @useResult
  $Res call(
      {int index,
      MediaTypeDownload type,
      String filename,
      String format,
      String libraryId,
      String itemId,
      num size,
      num? duration,
      int? bitrate,
      String? codec,
      String? mimeType,
      String? embeddedCoverArt});
}

/// @nodoc
class _$DownloadInfoCopyWithImpl<$Res, $Val extends DownloadInfo>
    implements $DownloadInfoCopyWith<$Res> {
  _$DownloadInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? filename = null,
    Object? format = null,
    Object? libraryId = null,
    Object? itemId = null,
    Object? size = null,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? codec = freezed,
    Object? mimeType = freezed,
    Object? embeddedCoverArt = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaTypeDownload,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddedCoverArt: freezed == embeddedCoverArt
          ? _value.embeddedCoverArt
          : embeddedCoverArt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadInfoImplCopyWith<$Res>
    implements $DownloadInfoCopyWith<$Res> {
  factory _$$DownloadInfoImplCopyWith(
          _$DownloadInfoImpl value, $Res Function(_$DownloadInfoImpl) then) =
      __$$DownloadInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      MediaTypeDownload type,
      String filename,
      String format,
      String libraryId,
      String itemId,
      num size,
      num? duration,
      int? bitrate,
      String? codec,
      String? mimeType,
      String? embeddedCoverArt});
}

/// @nodoc
class __$$DownloadInfoImplCopyWithImpl<$Res>
    extends _$DownloadInfoCopyWithImpl<$Res, _$DownloadInfoImpl>
    implements _$$DownloadInfoImplCopyWith<$Res> {
  __$$DownloadInfoImplCopyWithImpl(
      _$DownloadInfoImpl _value, $Res Function(_$DownloadInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
    Object? filename = null,
    Object? format = null,
    Object? libraryId = null,
    Object? itemId = null,
    Object? size = null,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? codec = freezed,
    Object? mimeType = freezed,
    Object? embeddedCoverArt = freezed,
  }) {
    return _then(_$DownloadInfoImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaTypeDownload,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as num,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddedCoverArt: freezed == embeddedCoverArt
          ? _value.embeddedCoverArt
          : embeddedCoverArt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadInfoImpl extends _DownloadInfo with DiagnosticableTreeMixin {
  _$DownloadInfoImpl(
      {required this.index,
      required this.type,
      required this.filename,
      required this.format,
      required this.libraryId,
      required this.itemId,
      required this.size,
      this.duration,
      this.bitrate,
      this.codec,
      this.mimeType,
      this.embeddedCoverArt})
      : super._();

  factory _$DownloadInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadInfoImplFromJson(json);

  @override
  int index;
  @override
  MediaTypeDownload type;
  @override
  String filename;
  @override
  String format;
  @override
  String libraryId;
  @override
  String itemId;
  @override
  num size;
  @override
  num? duration;
  @override
  int? bitrate;
  @override
  String? codec;
  @override
  String? mimeType;
  @override
  String? embeddedCoverArt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadInfo(index: $index, type: $type, filename: $filename, format: $format, libraryId: $libraryId, itemId: $itemId, size: $size, duration: $duration, bitrate: $bitrate, codec: $codec, mimeType: $mimeType, embeddedCoverArt: $embeddedCoverArt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadInfo'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('filename', filename))
      ..add(DiagnosticsProperty('format', format))
      ..add(DiagnosticsProperty('libraryId', libraryId))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('bitrate', bitrate))
      ..add(DiagnosticsProperty('codec', codec))
      ..add(DiagnosticsProperty('mimeType', mimeType))
      ..add(DiagnosticsProperty('embeddedCoverArt', embeddedCoverArt));
  }

  /// Create a copy of DownloadInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadInfoImplCopyWith<_$DownloadInfoImpl> get copyWith =>
      __$$DownloadInfoImplCopyWithImpl<_$DownloadInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadInfoImplToJson(
      this,
    );
  }
}

abstract class _DownloadInfo extends DownloadInfo {
  factory _DownloadInfo(
      {required int index,
      required MediaTypeDownload type,
      required String filename,
      required String format,
      required String libraryId,
      required String itemId,
      required num size,
      num? duration,
      int? bitrate,
      String? codec,
      String? mimeType,
      String? embeddedCoverArt}) = _$DownloadInfoImpl;
  _DownloadInfo._() : super._();

  factory _DownloadInfo.fromJson(Map<String, dynamic> json) =
      _$DownloadInfoImpl.fromJson;

  @override
  int get index;
  set index(int value);
  @override
  MediaTypeDownload get type;
  set type(MediaTypeDownload value);
  @override
  String get filename;
  set filename(String value);
  @override
  String get format;
  set format(String value);
  @override
  String get libraryId;
  set libraryId(String value);
  @override
  String get itemId;
  set itemId(String value);
  @override
  num get size;
  set size(num value);
  @override
  num? get duration;
  set duration(num? value);
  @override
  int? get bitrate;
  set bitrate(int? value);
  @override
  String? get codec;
  set codec(String? value);
  @override
  String? get mimeType;
  set mimeType(String? value);
  @override
  String? get embeddedCoverArt;
  set embeddedCoverArt(String? value);

  /// Create a copy of DownloadInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadInfoImplCopyWith<_$DownloadInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
