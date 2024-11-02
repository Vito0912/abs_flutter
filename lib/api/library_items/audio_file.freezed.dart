// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioFile _$AudioFileFromJson(Map<String, dynamic> json) {
  return _AudioFile.fromJson(json);
}

/// @nodoc
mixin _$AudioFile {
  @JsonKey(name: "index")
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: "ino")
  String get ino => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "trackNumFromMeta")
  int? get trackNumFromMeta => throw _privateConstructorUsedError;
  @JsonKey(name: "discNumFromMeta")
  int? get discNumFromMeta => throw _privateConstructorUsedError;
  @JsonKey(name: "trackNumFromFilename")
  int? get trackNumFromFilename => throw _privateConstructorUsedError;
  @JsonKey(name: "discNumFromFilename")
  int? get discNumFromFilename => throw _privateConstructorUsedError;
  @JsonKey(name: "manuallyVerified")
  bool? get manuallyVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "exclude")
  bool? get exclude => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  bool? get error => throw _privateConstructorUsedError;
  @JsonKey(name: "format")
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  double? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "bitRate")
  int? get bitRate => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "codec")
  String? get codec => throw _privateConstructorUsedError;
  @JsonKey(name: "timeBase")
  String? get timeBase => throw _privateConstructorUsedError;
  @JsonKey(name: "channels")
  int? get channels => throw _privateConstructorUsedError;
  @JsonKey(name: "channelLayout")
  String? get channelLayout => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: "embeddedCoverArt")
  String? get embeddedCoverArt => throw _privateConstructorUsedError;
  @JsonKey(name: "metaTags")
  MetaTags? get metaTags => throw _privateConstructorUsedError;
  @JsonKey(name: "mimeType")
  String? get mimeType => throw _privateConstructorUsedError;

  /// Serializes this AudioFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioFileCopyWith<AudioFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioFileCopyWith<$Res> {
  factory $AudioFileCopyWith(AudioFile value, $Res Function(AudioFile) then) =
      _$AudioFileCopyWithImpl<$Res, AudioFile>;
  @useResult
  $Res call(
      {@JsonKey(name: "index") int index,
      @JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "trackNumFromMeta") int? trackNumFromMeta,
      @JsonKey(name: "discNumFromMeta") int? discNumFromMeta,
      @JsonKey(name: "trackNumFromFilename") int? trackNumFromFilename,
      @JsonKey(name: "discNumFromFilename") int? discNumFromFilename,
      @JsonKey(name: "manuallyVerified") bool? manuallyVerified,
      @JsonKey(name: "exclude") bool? exclude,
      @JsonKey(name: "error") bool? error,
      @JsonKey(name: "format") String? format,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "bitRate") int? bitRate,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "codec") String? codec,
      @JsonKey(name: "timeBase") String? timeBase,
      @JsonKey(name: "channels") int? channels,
      @JsonKey(name: "channelLayout") String? channelLayout,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "embeddedCoverArt") String? embeddedCoverArt,
      @JsonKey(name: "metaTags") MetaTags? metaTags,
      @JsonKey(name: "mimeType") String? mimeType});

  $LibraryFileMetadataCopyWith<$Res> get metadata;
  $MetaTagsCopyWith<$Res>? get metaTags;
}

/// @nodoc
class _$AudioFileCopyWithImpl<$Res, $Val extends AudioFile>
    implements $AudioFileCopyWith<$Res> {
  _$AudioFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? ino = null,
    Object? metadata = null,
    Object? addedAt = null,
    Object? updatedAt = freezed,
    Object? trackNumFromMeta = freezed,
    Object? discNumFromMeta = freezed,
    Object? trackNumFromFilename = freezed,
    Object? discNumFromFilename = freezed,
    Object? manuallyVerified = freezed,
    Object? exclude = freezed,
    Object? error = freezed,
    Object? format = freezed,
    Object? duration = freezed,
    Object? bitRate = freezed,
    Object? language = freezed,
    Object? codec = freezed,
    Object? timeBase = freezed,
    Object? channels = freezed,
    Object? channelLayout = freezed,
    Object? chapters = freezed,
    Object? embeddedCoverArt = freezed,
    Object? metaTags = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LibraryFileMetadata,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumFromMeta: freezed == trackNumFromMeta
          ? _value.trackNumFromMeta
          : trackNumFromMeta // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumFromMeta: freezed == discNumFromMeta
          ? _value.discNumFromMeta
          : discNumFromMeta // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumFromFilename: freezed == trackNumFromFilename
          ? _value.trackNumFromFilename
          : trackNumFromFilename // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumFromFilename: freezed == discNumFromFilename
          ? _value.discNumFromFilename
          : discNumFromFilename // ignore: cast_nullable_to_non_nullable
              as int?,
      manuallyVerified: freezed == manuallyVerified
          ? _value.manuallyVerified
          : manuallyVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      exclude: freezed == exclude
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      timeBase: freezed == timeBase
          ? _value.timeBase
          : timeBase // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      channelLayout: freezed == channelLayout
          ? _value.channelLayout
          : channelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      embeddedCoverArt: freezed == embeddedCoverArt
          ? _value.embeddedCoverArt
          : embeddedCoverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTags: freezed == metaTags
          ? _value.metaTags
          : metaTags // ignore: cast_nullable_to_non_nullable
              as MetaTags?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryFileMetadataCopyWith<$Res> get metadata {
    return $LibraryFileMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaTagsCopyWith<$Res>? get metaTags {
    if (_value.metaTags == null) {
      return null;
    }

    return $MetaTagsCopyWith<$Res>(_value.metaTags!, (value) {
      return _then(_value.copyWith(metaTags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AudioFileImplCopyWith<$Res>
    implements $AudioFileCopyWith<$Res> {
  factory _$$AudioFileImplCopyWith(
          _$AudioFileImpl value, $Res Function(_$AudioFileImpl) then) =
      __$$AudioFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "index") int index,
      @JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "trackNumFromMeta") int? trackNumFromMeta,
      @JsonKey(name: "discNumFromMeta") int? discNumFromMeta,
      @JsonKey(name: "trackNumFromFilename") int? trackNumFromFilename,
      @JsonKey(name: "discNumFromFilename") int? discNumFromFilename,
      @JsonKey(name: "manuallyVerified") bool? manuallyVerified,
      @JsonKey(name: "exclude") bool? exclude,
      @JsonKey(name: "error") bool? error,
      @JsonKey(name: "format") String? format,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "bitRate") int? bitRate,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "codec") String? codec,
      @JsonKey(name: "timeBase") String? timeBase,
      @JsonKey(name: "channels") int? channels,
      @JsonKey(name: "channelLayout") String? channelLayout,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "embeddedCoverArt") String? embeddedCoverArt,
      @JsonKey(name: "metaTags") MetaTags? metaTags,
      @JsonKey(name: "mimeType") String? mimeType});

  @override
  $LibraryFileMetadataCopyWith<$Res> get metadata;
  @override
  $MetaTagsCopyWith<$Res>? get metaTags;
}

/// @nodoc
class __$$AudioFileImplCopyWithImpl<$Res>
    extends _$AudioFileCopyWithImpl<$Res, _$AudioFileImpl>
    implements _$$AudioFileImplCopyWith<$Res> {
  __$$AudioFileImplCopyWithImpl(
      _$AudioFileImpl _value, $Res Function(_$AudioFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? ino = null,
    Object? metadata = null,
    Object? addedAt = null,
    Object? updatedAt = freezed,
    Object? trackNumFromMeta = freezed,
    Object? discNumFromMeta = freezed,
    Object? trackNumFromFilename = freezed,
    Object? discNumFromFilename = freezed,
    Object? manuallyVerified = freezed,
    Object? exclude = freezed,
    Object? error = freezed,
    Object? format = freezed,
    Object? duration = freezed,
    Object? bitRate = freezed,
    Object? language = freezed,
    Object? codec = freezed,
    Object? timeBase = freezed,
    Object? channels = freezed,
    Object? channelLayout = freezed,
    Object? chapters = freezed,
    Object? embeddedCoverArt = freezed,
    Object? metaTags = freezed,
    Object? mimeType = freezed,
  }) {
    return _then(_$AudioFileImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LibraryFileMetadata,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumFromMeta: freezed == trackNumFromMeta
          ? _value.trackNumFromMeta
          : trackNumFromMeta // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumFromMeta: freezed == discNumFromMeta
          ? _value.discNumFromMeta
          : discNumFromMeta // ignore: cast_nullable_to_non_nullable
              as int?,
      trackNumFromFilename: freezed == trackNumFromFilename
          ? _value.trackNumFromFilename
          : trackNumFromFilename // ignore: cast_nullable_to_non_nullable
              as int?,
      discNumFromFilename: freezed == discNumFromFilename
          ? _value.discNumFromFilename
          : discNumFromFilename // ignore: cast_nullable_to_non_nullable
              as int?,
      manuallyVerified: freezed == manuallyVerified
          ? _value.manuallyVerified
          : manuallyVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      exclude: freezed == exclude
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      bitRate: freezed == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      timeBase: freezed == timeBase
          ? _value.timeBase
          : timeBase // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      channelLayout: freezed == channelLayout
          ? _value.channelLayout
          : channelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      embeddedCoverArt: freezed == embeddedCoverArt
          ? _value.embeddedCoverArt
          : embeddedCoverArt // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTags: freezed == metaTags
          ? _value.metaTags
          : metaTags // ignore: cast_nullable_to_non_nullable
              as MetaTags?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioFileImpl implements _AudioFile {
  const _$AudioFileImpl(
      {@JsonKey(name: "index") required this.index,
      @JsonKey(name: "ino") required this.ino,
      @JsonKey(name: "metadata") required this.metadata,
      @JsonKey(name: "addedAt") required this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "trackNumFromMeta") this.trackNumFromMeta,
      @JsonKey(name: "discNumFromMeta") this.discNumFromMeta,
      @JsonKey(name: "trackNumFromFilename") this.trackNumFromFilename,
      @JsonKey(name: "discNumFromFilename") this.discNumFromFilename,
      @JsonKey(name: "manuallyVerified") this.manuallyVerified,
      @JsonKey(name: "exclude") this.exclude,
      @JsonKey(name: "error") this.error,
      @JsonKey(name: "format") this.format,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "bitRate") this.bitRate,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "codec") this.codec,
      @JsonKey(name: "timeBase") this.timeBase,
      @JsonKey(name: "channels") this.channels,
      @JsonKey(name: "channelLayout") this.channelLayout,
      @JsonKey(name: "chapters") final List<Chapter>? chapters,
      @JsonKey(name: "embeddedCoverArt") this.embeddedCoverArt,
      @JsonKey(name: "metaTags") this.metaTags,
      @JsonKey(name: "mimeType") this.mimeType})
      : _chapters = chapters;

  factory _$AudioFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioFileImplFromJson(json);

  @override
  @JsonKey(name: "index")
  final int index;
  @override
  @JsonKey(name: "ino")
  final String ino;
  @override
  @JsonKey(name: "metadata")
  final LibraryFileMetadata metadata;
  @override
  @JsonKey(name: "addedAt")
  final int addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;
  @override
  @JsonKey(name: "trackNumFromMeta")
  final int? trackNumFromMeta;
  @override
  @JsonKey(name: "discNumFromMeta")
  final int? discNumFromMeta;
  @override
  @JsonKey(name: "trackNumFromFilename")
  final int? trackNumFromFilename;
  @override
  @JsonKey(name: "discNumFromFilename")
  final int? discNumFromFilename;
  @override
  @JsonKey(name: "manuallyVerified")
  final bool? manuallyVerified;
  @override
  @JsonKey(name: "exclude")
  final bool? exclude;
  @override
  @JsonKey(name: "error")
  final bool? error;
  @override
  @JsonKey(name: "format")
  final String? format;
  @override
  @JsonKey(name: "duration")
  final double? duration;
  @override
  @JsonKey(name: "bitRate")
  final int? bitRate;
  @override
  @JsonKey(name: "language")
  final String? language;
  @override
  @JsonKey(name: "codec")
  final String? codec;
  @override
  @JsonKey(name: "timeBase")
  final String? timeBase;
  @override
  @JsonKey(name: "channels")
  final int? channels;
  @override
  @JsonKey(name: "channelLayout")
  final String? channelLayout;
  final List<Chapter>? _chapters;
  @override
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "embeddedCoverArt")
  final String? embeddedCoverArt;
  @override
  @JsonKey(name: "metaTags")
  final MetaTags? metaTags;
  @override
  @JsonKey(name: "mimeType")
  final String? mimeType;

  @override
  String toString() {
    return 'AudioFile(index: $index, ino: $ino, metadata: $metadata, addedAt: $addedAt, updatedAt: $updatedAt, trackNumFromMeta: $trackNumFromMeta, discNumFromMeta: $discNumFromMeta, trackNumFromFilename: $trackNumFromFilename, discNumFromFilename: $discNumFromFilename, manuallyVerified: $manuallyVerified, exclude: $exclude, error: $error, format: $format, duration: $duration, bitRate: $bitRate, language: $language, codec: $codec, timeBase: $timeBase, channels: $channels, channelLayout: $channelLayout, chapters: $chapters, embeddedCoverArt: $embeddedCoverArt, metaTags: $metaTags, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioFileImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.ino, ino) || other.ino == ino) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.trackNumFromMeta, trackNumFromMeta) ||
                other.trackNumFromMeta == trackNumFromMeta) &&
            (identical(other.discNumFromMeta, discNumFromMeta) ||
                other.discNumFromMeta == discNumFromMeta) &&
            (identical(other.trackNumFromFilename, trackNumFromFilename) ||
                other.trackNumFromFilename == trackNumFromFilename) &&
            (identical(other.discNumFromFilename, discNumFromFilename) ||
                other.discNumFromFilename == discNumFromFilename) &&
            (identical(other.manuallyVerified, manuallyVerified) ||
                other.manuallyVerified == manuallyVerified) &&
            (identical(other.exclude, exclude) || other.exclude == exclude) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.timeBase, timeBase) ||
                other.timeBase == timeBase) &&
            (identical(other.channels, channels) ||
                other.channels == channels) &&
            (identical(other.channelLayout, channelLayout) ||
                other.channelLayout == channelLayout) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.embeddedCoverArt, embeddedCoverArt) ||
                other.embeddedCoverArt == embeddedCoverArt) &&
            (identical(other.metaTags, metaTags) ||
                other.metaTags == metaTags) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        index,
        ino,
        metadata,
        addedAt,
        updatedAt,
        trackNumFromMeta,
        discNumFromMeta,
        trackNumFromFilename,
        discNumFromFilename,
        manuallyVerified,
        exclude,
        error,
        format,
        duration,
        bitRate,
        language,
        codec,
        timeBase,
        channels,
        channelLayout,
        const DeepCollectionEquality().hash(_chapters),
        embeddedCoverArt,
        metaTags,
        mimeType
      ]);

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioFileImplCopyWith<_$AudioFileImpl> get copyWith =>
      __$$AudioFileImplCopyWithImpl<_$AudioFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioFileImplToJson(
      this,
    );
  }
}

abstract class _AudioFile implements AudioFile {
  const factory _AudioFile(
      {@JsonKey(name: "index") required final int index,
      @JsonKey(name: "ino") required final String ino,
      @JsonKey(name: "metadata") required final LibraryFileMetadata metadata,
      @JsonKey(name: "addedAt") required final int addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt,
      @JsonKey(name: "trackNumFromMeta") final int? trackNumFromMeta,
      @JsonKey(name: "discNumFromMeta") final int? discNumFromMeta,
      @JsonKey(name: "trackNumFromFilename") final int? trackNumFromFilename,
      @JsonKey(name: "discNumFromFilename") final int? discNumFromFilename,
      @JsonKey(name: "manuallyVerified") final bool? manuallyVerified,
      @JsonKey(name: "exclude") final bool? exclude,
      @JsonKey(name: "error") final bool? error,
      @JsonKey(name: "format") final String? format,
      @JsonKey(name: "duration") final double? duration,
      @JsonKey(name: "bitRate") final int? bitRate,
      @JsonKey(name: "language") final String? language,
      @JsonKey(name: "codec") final String? codec,
      @JsonKey(name: "timeBase") final String? timeBase,
      @JsonKey(name: "channels") final int? channels,
      @JsonKey(name: "channelLayout") final String? channelLayout,
      @JsonKey(name: "chapters") final List<Chapter>? chapters,
      @JsonKey(name: "embeddedCoverArt") final String? embeddedCoverArt,
      @JsonKey(name: "metaTags") final MetaTags? metaTags,
      @JsonKey(name: "mimeType") final String? mimeType}) = _$AudioFileImpl;

  factory _AudioFile.fromJson(Map<String, dynamic> json) =
      _$AudioFileImpl.fromJson;

  @override
  @JsonKey(name: "index")
  int get index;
  @override
  @JsonKey(name: "ino")
  String get ino;
  @override
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata;
  @override
  @JsonKey(name: "addedAt")
  int get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;
  @override
  @JsonKey(name: "trackNumFromMeta")
  int? get trackNumFromMeta;
  @override
  @JsonKey(name: "discNumFromMeta")
  int? get discNumFromMeta;
  @override
  @JsonKey(name: "trackNumFromFilename")
  int? get trackNumFromFilename;
  @override
  @JsonKey(name: "discNumFromFilename")
  int? get discNumFromFilename;
  @override
  @JsonKey(name: "manuallyVerified")
  bool? get manuallyVerified;
  @override
  @JsonKey(name: "exclude")
  bool? get exclude;
  @override
  @JsonKey(name: "error")
  bool? get error;
  @override
  @JsonKey(name: "format")
  String? get format;
  @override
  @JsonKey(name: "duration")
  double? get duration;
  @override
  @JsonKey(name: "bitRate")
  int? get bitRate;
  @override
  @JsonKey(name: "language")
  String? get language;
  @override
  @JsonKey(name: "codec")
  String? get codec;
  @override
  @JsonKey(name: "timeBase")
  String? get timeBase;
  @override
  @JsonKey(name: "channels")
  int? get channels;
  @override
  @JsonKey(name: "channelLayout")
  String? get channelLayout;
  @override
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters;
  @override
  @JsonKey(name: "embeddedCoverArt")
  String? get embeddedCoverArt;
  @override
  @JsonKey(name: "metaTags")
  MetaTags? get metaTags;
  @override
  @JsonKey(name: "mimeType")
  String? get mimeType;

  /// Create a copy of AudioFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioFileImplCopyWith<_$AudioFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
