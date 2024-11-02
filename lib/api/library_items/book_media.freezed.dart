// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookMedia _$BookMediaFromJson(Map<String, dynamic> json) {
  return _BookMedia.fromJson(json);
}

/// @nodoc
mixin _$BookMedia {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemId")
  String get libraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  MediaMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPath")
  String? get coverPath => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "audioFiles")
  List<AudioFile>? get audioFiles => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: "ebookFile")
  EbookFile? get ebookFile => throw _privateConstructorUsedError;

  /// Serializes this BookMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookMediaCopyWith<BookMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMediaCopyWith<$Res> {
  factory $BookMediaCopyWith(BookMedia value, $Res Function(BookMedia) then) =
      _$BookMediaCopyWithImpl<$Res, BookMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "metadata") MediaMetadata metadata,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "audioFiles") List<AudioFile>? audioFiles,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "ebookFile") EbookFile? ebookFile});

  $MediaMetadataCopyWith<$Res> get metadata;
  $EbookFileCopyWith<$Res>? get ebookFile;
}

/// @nodoc
class _$BookMediaCopyWithImpl<$Res, $Val extends BookMedia>
    implements $BookMediaCopyWith<$Res> {
  _$BookMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryItemId = null,
    Object? metadata = null,
    Object? coverPath = freezed,
    Object? tags = freezed,
    Object? audioFiles = freezed,
    Object? chapters = freezed,
    Object? ebookFile = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MediaMetadata,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      audioFiles: freezed == audioFiles
          ? _value.audioFiles
          : audioFiles // ignore: cast_nullable_to_non_nullable
              as List<AudioFile>?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      ebookFile: freezed == ebookFile
          ? _value.ebookFile
          : ebookFile // ignore: cast_nullable_to_non_nullable
              as EbookFile?,
    ) as $Val);
  }

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaMetadataCopyWith<$Res> get metadata {
    return $MediaMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EbookFileCopyWith<$Res>? get ebookFile {
    if (_value.ebookFile == null) {
      return null;
    }

    return $EbookFileCopyWith<$Res>(_value.ebookFile!, (value) {
      return _then(_value.copyWith(ebookFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookMediaImplCopyWith<$Res>
    implements $BookMediaCopyWith<$Res> {
  factory _$$BookMediaImplCopyWith(
          _$BookMediaImpl value, $Res Function(_$BookMediaImpl) then) =
      __$$BookMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "metadata") MediaMetadata metadata,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "audioFiles") List<AudioFile>? audioFiles,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "ebookFile") EbookFile? ebookFile});

  @override
  $MediaMetadataCopyWith<$Res> get metadata;
  @override
  $EbookFileCopyWith<$Res>? get ebookFile;
}

/// @nodoc
class __$$BookMediaImplCopyWithImpl<$Res>
    extends _$BookMediaCopyWithImpl<$Res, _$BookMediaImpl>
    implements _$$BookMediaImplCopyWith<$Res> {
  __$$BookMediaImplCopyWithImpl(
      _$BookMediaImpl _value, $Res Function(_$BookMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryItemId = null,
    Object? metadata = null,
    Object? coverPath = freezed,
    Object? tags = freezed,
    Object? audioFiles = freezed,
    Object? chapters = freezed,
    Object? ebookFile = freezed,
  }) {
    return _then(_$BookMediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MediaMetadata,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      audioFiles: freezed == audioFiles
          ? _value._audioFiles
          : audioFiles // ignore: cast_nullable_to_non_nullable
              as List<AudioFile>?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      ebookFile: freezed == ebookFile
          ? _value.ebookFile
          : ebookFile // ignore: cast_nullable_to_non_nullable
              as EbookFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookMediaImpl implements _BookMedia {
  const _$BookMediaImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "libraryItemId") required this.libraryItemId,
      @JsonKey(name: "metadata") required this.metadata,
      @JsonKey(name: "coverPath") this.coverPath,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "audioFiles") final List<AudioFile>? audioFiles,
      @JsonKey(name: "chapters") final List<Chapter>? chapters,
      @JsonKey(name: "ebookFile") this.ebookFile})
      : _tags = tags,
        _audioFiles = audioFiles,
        _chapters = chapters;

  factory _$BookMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookMediaImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "libraryItemId")
  final String libraryItemId;
  @override
  @JsonKey(name: "metadata")
  final MediaMetadata metadata;
  @override
  @JsonKey(name: "coverPath")
  final String? coverPath;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AudioFile>? _audioFiles;
  @override
  @JsonKey(name: "audioFiles")
  List<AudioFile>? get audioFiles {
    final value = _audioFiles;
    if (value == null) return null;
    if (_audioFiles is EqualUnmodifiableListView) return _audioFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "ebookFile")
  final EbookFile? ebookFile;

  @override
  String toString() {
    return 'BookMedia(id: $id, libraryItemId: $libraryItemId, metadata: $metadata, coverPath: $coverPath, tags: $tags, audioFiles: $audioFiles, chapters: $chapters, ebookFile: $ebookFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libraryItemId, libraryItemId) ||
                other.libraryItemId == libraryItemId) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._audioFiles, _audioFiles) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.ebookFile, ebookFile) ||
                other.ebookFile == ebookFile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      libraryItemId,
      metadata,
      coverPath,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_audioFiles),
      const DeepCollectionEquality().hash(_chapters),
      ebookFile);

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMediaImplCopyWith<_$BookMediaImpl> get copyWith =>
      __$$BookMediaImplCopyWithImpl<_$BookMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookMediaImplToJson(
      this,
    );
  }
}

abstract class _BookMedia implements BookMedia {
  const factory _BookMedia(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "libraryItemId") required final String libraryItemId,
          @JsonKey(name: "metadata") required final MediaMetadata metadata,
          @JsonKey(name: "coverPath") final String? coverPath,
          @JsonKey(name: "tags") final List<String>? tags,
          @JsonKey(name: "audioFiles") final List<AudioFile>? audioFiles,
          @JsonKey(name: "chapters") final List<Chapter>? chapters,
          @JsonKey(name: "ebookFile") final EbookFile? ebookFile}) =
      _$BookMediaImpl;

  factory _BookMedia.fromJson(Map<String, dynamic> json) =
      _$BookMediaImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "libraryItemId")
  String get libraryItemId;
  @override
  @JsonKey(name: "metadata")
  MediaMetadata get metadata;
  @override
  @JsonKey(name: "coverPath")
  String? get coverPath;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "audioFiles")
  List<AudioFile>? get audioFiles;
  @override
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters;
  @override
  @JsonKey(name: "ebookFile")
  EbookFile? get ebookFile;

  /// Create a copy of BookMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookMediaImplCopyWith<_$BookMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
