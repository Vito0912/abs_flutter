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
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  set displayName(String value) => throw _privateConstructorUsedError;
  String get libraryId => throw _privateConstructorUsedError;
  set libraryId(String value) => throw _privateConstructorUsedError;
  String get libraryName => throw _privateConstructorUsedError;
  set libraryName(String value) => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  set itemId(String value) => throw _privateConstructorUsedError;
  List<DownloadFile> get files => throw _privateConstructorUsedError;
  set files(List<DownloadFile> value) => throw _privateConstructorUsedError;
  String? get episodeId => throw _privateConstructorUsedError;
  set episodeId(String? value) => throw _privateConstructorUsedError;
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
      String userId,
      String displayName,
      String libraryId,
      String libraryName,
      String itemId,
      List<DownloadFile> files,
      String? episodeId,
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
    Object? userId = null,
    Object? displayName = null,
    Object? libraryId = null,
    Object? libraryName = null,
    Object? itemId = null,
    Object? files = null,
    Object? episodeId = freezed,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryName: null == libraryName
          ? _value.libraryName
          : libraryName // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DownloadFile>,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
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
      String userId,
      String displayName,
      String libraryId,
      String libraryName,
      String itemId,
      List<DownloadFile> files,
      String? episodeId,
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
    Object? userId = null,
    Object? displayName = null,
    Object? libraryId = null,
    Object? libraryName = null,
    Object? itemId = null,
    Object? files = null,
    Object? episodeId = freezed,
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
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryName: null == libraryName
          ? _value.libraryName
          : libraryName // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<DownloadFile>,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
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
      required this.userId,
      required this.displayName,
      required this.libraryId,
      required this.libraryName,
      required this.itemId,
      required this.files,
      this.episodeId,
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
  String userId;
  @override
  String displayName;
  @override
  String libraryId;
  @override
  String libraryName;
  @override
  String itemId;
  @override
  List<DownloadFile> files;
  @override
  String? episodeId;
  @override
  String? mimeType;
  @override
  String? embeddedCoverArt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadInfo(index: $index, type: $type, userId: $userId, displayName: $displayName, libraryId: $libraryId, libraryName: $libraryName, itemId: $itemId, files: $files, episodeId: $episodeId, mimeType: $mimeType, embeddedCoverArt: $embeddedCoverArt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadInfo'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('libraryId', libraryId))
      ..add(DiagnosticsProperty('libraryName', libraryName))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('files', files))
      ..add(DiagnosticsProperty('episodeId', episodeId))
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
      required String userId,
      required String displayName,
      required String libraryId,
      required String libraryName,
      required String itemId,
      required List<DownloadFile> files,
      String? episodeId,
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
  String get userId;
  set userId(String value);
  @override
  String get displayName;
  set displayName(String value);
  @override
  String get libraryId;
  set libraryId(String value);
  @override
  String get libraryName;
  set libraryName(String value);
  @override
  String get itemId;
  set itemId(String value);
  @override
  List<DownloadFile> get files;
  set files(List<DownloadFile> value);
  @override
  String? get episodeId;
  set episodeId(String? value);
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

DownloadFile _$DownloadFileFromJson(Map<String, dynamic> json) {
  return _DownloadFile.fromJson(json);
}

/// @nodoc
mixin _$DownloadFile {
  String get filename => throw _privateConstructorUsedError;
  set filename(String value) => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  set format(String value) => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  set status(TaskStatus value) => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  set index(int value) => throw _privateConstructorUsedError;
  String get ino => throw _privateConstructorUsedError;
  set ino(String value) => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  set filePath(String? value) => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  set duration(double? value) => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  set size(int? value) => throw _privateConstructorUsedError;
  int? get bitrate => throw _privateConstructorUsedError;
  set bitrate(int? value) => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  set codec(String? value) => throw _privateConstructorUsedError;

  /// Serializes this DownloadFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadFileCopyWith<DownloadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadFileCopyWith<$Res> {
  factory $DownloadFileCopyWith(
          DownloadFile value, $Res Function(DownloadFile) then) =
      _$DownloadFileCopyWithImpl<$Res, DownloadFile>;
  @useResult
  $Res call(
      {String filename,
      String format,
      TaskStatus status,
      int index,
      String ino,
      String? filePath,
      double? duration,
      int? size,
      int? bitrate,
      String? codec});
}

/// @nodoc
class _$DownloadFileCopyWithImpl<$Res, $Val extends DownloadFile>
    implements $DownloadFileCopyWith<$Res> {
  _$DownloadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? format = null,
    Object? status = null,
    Object? index = null,
    Object? ino = null,
    Object? filePath = freezed,
    Object? duration = freezed,
    Object? size = freezed,
    Object? bitrate = freezed,
    Object? codec = freezed,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadFileImplCopyWith<$Res>
    implements $DownloadFileCopyWith<$Res> {
  factory _$$DownloadFileImplCopyWith(
          _$DownloadFileImpl value, $Res Function(_$DownloadFileImpl) then) =
      __$$DownloadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String filename,
      String format,
      TaskStatus status,
      int index,
      String ino,
      String? filePath,
      double? duration,
      int? size,
      int? bitrate,
      String? codec});
}

/// @nodoc
class __$$DownloadFileImplCopyWithImpl<$Res>
    extends _$DownloadFileCopyWithImpl<$Res, _$DownloadFileImpl>
    implements _$$DownloadFileImplCopyWith<$Res> {
  __$$DownloadFileImplCopyWithImpl(
      _$DownloadFileImpl _value, $Res Function(_$DownloadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? format = null,
    Object? status = null,
    Object? index = null,
    Object? ino = null,
    Object? filePath = freezed,
    Object? duration = freezed,
    Object? size = freezed,
    Object? bitrate = freezed,
    Object? codec = freezed,
  }) {
    return _then(_$DownloadFileImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadFileImpl extends _DownloadFile with DiagnosticableTreeMixin {
  _$DownloadFileImpl(
      {required this.filename,
      required this.format,
      required this.status,
      required this.index,
      required this.ino,
      this.filePath,
      this.duration,
      this.size,
      this.bitrate,
      this.codec})
      : super._();

  factory _$DownloadFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadFileImplFromJson(json);

  @override
  String filename;
  @override
  String format;
  @override
  TaskStatus status;
  @override
  int index;
  @override
  String ino;
  @override
  String? filePath;
  @override
  double? duration;
  @override
  int? size;
  @override
  int? bitrate;
  @override
  String? codec;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DownloadFile(filename: $filename, format: $format, status: $status, index: $index, ino: $ino, filePath: $filePath, duration: $duration, size: $size, bitrate: $bitrate, codec: $codec)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DownloadFile'))
      ..add(DiagnosticsProperty('filename', filename))
      ..add(DiagnosticsProperty('format', format))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('ino', ino))
      ..add(DiagnosticsProperty('filePath', filePath))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('bitrate', bitrate))
      ..add(DiagnosticsProperty('codec', codec));
  }

  /// Create a copy of DownloadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      __$$DownloadFileImplCopyWithImpl<_$DownloadFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadFileImplToJson(
      this,
    );
  }
}

abstract class _DownloadFile extends DownloadFile {
  factory _DownloadFile(
      {required String filename,
      required String format,
      required TaskStatus status,
      required int index,
      required String ino,
      String? filePath,
      double? duration,
      int? size,
      int? bitrate,
      String? codec}) = _$DownloadFileImpl;
  _DownloadFile._() : super._();

  factory _DownloadFile.fromJson(Map<String, dynamic> json) =
      _$DownloadFileImpl.fromJson;

  @override
  String get filename;
  set filename(String value);
  @override
  String get format;
  set format(String value);
  @override
  TaskStatus get status;
  set status(TaskStatus value);
  @override
  int get index;
  set index(int value);
  @override
  String get ino;
  set ino(String value);
  @override
  String? get filePath;
  set filePath(String? value);
  @override
  double? get duration;
  set duration(double? value);
  @override
  int? get size;
  set size(int? value);
  @override
  int? get bitrate;
  set bitrate(int? value);
  @override
  String? get codec;
  set codec(String? value);

  /// Create a copy of DownloadFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
