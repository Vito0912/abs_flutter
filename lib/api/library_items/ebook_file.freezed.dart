// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ebook_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EbookFile _$EbookFileFromJson(Map<String, dynamic> json) {
  return _EbookFile.fromJson(json);
}

/// @nodoc
mixin _$EbookFile {
  @JsonKey(name: "ino")
  String get ino => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "ebookFormat")
  String get ebookFormat => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EbookFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EbookFileCopyWith<EbookFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EbookFileCopyWith<$Res> {
  factory $EbookFileCopyWith(EbookFile value, $Res Function(EbookFile) then) =
      _$EbookFileCopyWithImpl<$Res, EbookFile>;
  @useResult
  $Res call(
      {@JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "ebookFormat") String ebookFormat,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt});

  $LibraryFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$EbookFileCopyWithImpl<$Res, $Val extends EbookFile>
    implements $EbookFileCopyWith<$Res> {
  _$EbookFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ino = null,
    Object? metadata = null,
    Object? ebookFormat = null,
    Object? addedAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LibraryFileMetadata,
      ebookFormat: null == ebookFormat
          ? _value.ebookFormat
          : ebookFormat // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryFileMetadataCopyWith<$Res> get metadata {
    return $LibraryFileMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EbookFileImplCopyWith<$Res>
    implements $EbookFileCopyWith<$Res> {
  factory _$$EbookFileImplCopyWith(
          _$EbookFileImpl value, $Res Function(_$EbookFileImpl) then) =
      __$$EbookFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "ebookFormat") String ebookFormat,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt});

  @override
  $LibraryFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$EbookFileImplCopyWithImpl<$Res>
    extends _$EbookFileCopyWithImpl<$Res, _$EbookFileImpl>
    implements _$$EbookFileImplCopyWith<$Res> {
  __$$EbookFileImplCopyWithImpl(
      _$EbookFileImpl _value, $Res Function(_$EbookFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ino = null,
    Object? metadata = null,
    Object? ebookFormat = null,
    Object? addedAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EbookFileImpl(
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LibraryFileMetadata,
      ebookFormat: null == ebookFormat
          ? _value.ebookFormat
          : ebookFormat // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EbookFileImpl implements _EbookFile {
  const _$EbookFileImpl(
      {@JsonKey(name: "ino") required this.ino,
      @JsonKey(name: "metadata") required this.metadata,
      @JsonKey(name: "ebookFormat") required this.ebookFormat,
      @JsonKey(name: "addedAt") required this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$EbookFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$EbookFileImplFromJson(json);

  @override
  @JsonKey(name: "ino")
  final String ino;
  @override
  @JsonKey(name: "metadata")
  final LibraryFileMetadata metadata;
  @override
  @JsonKey(name: "ebookFormat")
  final String ebookFormat;
  @override
  @JsonKey(name: "addedAt")
  final int addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;

  @override
  String toString() {
    return 'EbookFile(ino: $ino, metadata: $metadata, ebookFormat: $ebookFormat, addedAt: $addedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EbookFileImpl &&
            (identical(other.ino, ino) || other.ino == ino) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.ebookFormat, ebookFormat) ||
                other.ebookFormat == ebookFormat) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ino, metadata, ebookFormat, addedAt, updatedAt);

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EbookFileImplCopyWith<_$EbookFileImpl> get copyWith =>
      __$$EbookFileImplCopyWithImpl<_$EbookFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EbookFileImplToJson(
      this,
    );
  }
}

abstract class _EbookFile implements EbookFile {
  const factory _EbookFile(
      {@JsonKey(name: "ino") required final String ino,
      @JsonKey(name: "metadata") required final LibraryFileMetadata metadata,
      @JsonKey(name: "ebookFormat") required final String ebookFormat,
      @JsonKey(name: "addedAt") required final int addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt}) = _$EbookFileImpl;

  factory _EbookFile.fromJson(Map<String, dynamic> json) =
      _$EbookFileImpl.fromJson;

  @override
  @JsonKey(name: "ino")
  String get ino;
  @override
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata;
  @override
  @JsonKey(name: "ebookFormat")
  String get ebookFormat;
  @override
  @JsonKey(name: "addedAt")
  int get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;

  /// Create a copy of EbookFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EbookFileImplCopyWith<_$EbookFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
