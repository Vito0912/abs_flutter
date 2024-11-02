// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryFile _$LibraryFileFromJson(Map<String, dynamic> json) {
  return _LibraryFile.fromJson(json);
}

/// @nodoc
mixin _$LibraryFile {
  @JsonKey(name: "ino")
  String get ino => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "isSupplementary")
  bool? get isSupplementary => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "fileType")
  String? get fileType => throw _privateConstructorUsedError;

  /// Serializes this LibraryFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryFileCopyWith<LibraryFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryFileCopyWith<$Res> {
  factory $LibraryFileCopyWith(
          LibraryFile value, $Res Function(LibraryFile) then) =
      _$LibraryFileCopyWithImpl<$Res, LibraryFile>;
  @useResult
  $Res call(
      {@JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "isSupplementary") bool? isSupplementary,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "fileType") String? fileType});

  $LibraryFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$LibraryFileCopyWithImpl<$Res, $Val extends LibraryFile>
    implements $LibraryFileCopyWith<$Res> {
  _$LibraryFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ino = null,
    Object? metadata = null,
    Object? isSupplementary = freezed,
    Object? addedAt = null,
    Object? updatedAt = freezed,
    Object? fileType = freezed,
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
      isSupplementary: freezed == isSupplementary
          ? _value.isSupplementary
          : isSupplementary // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LibraryFile
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
abstract class _$$LibraryFileImplCopyWith<$Res>
    implements $LibraryFileCopyWith<$Res> {
  factory _$$LibraryFileImplCopyWith(
          _$LibraryFileImpl value, $Res Function(_$LibraryFileImpl) then) =
      __$$LibraryFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ino") String ino,
      @JsonKey(name: "metadata") LibraryFileMetadata metadata,
      @JsonKey(name: "isSupplementary") bool? isSupplementary,
      @JsonKey(name: "addedAt") int addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "fileType") String? fileType});

  @override
  $LibraryFileMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$LibraryFileImplCopyWithImpl<$Res>
    extends _$LibraryFileCopyWithImpl<$Res, _$LibraryFileImpl>
    implements _$$LibraryFileImplCopyWith<$Res> {
  __$$LibraryFileImplCopyWithImpl(
      _$LibraryFileImpl _value, $Res Function(_$LibraryFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ino = null,
    Object? metadata = null,
    Object? isSupplementary = freezed,
    Object? addedAt = null,
    Object? updatedAt = freezed,
    Object? fileType = freezed,
  }) {
    return _then(_$LibraryFileImpl(
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as LibraryFileMetadata,
      isSupplementary: freezed == isSupplementary
          ? _value.isSupplementary
          : isSupplementary // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryFileImpl implements _LibraryFile {
  const _$LibraryFileImpl(
      {@JsonKey(name: "ino") required this.ino,
      @JsonKey(name: "metadata") required this.metadata,
      @JsonKey(name: "isSupplementary") this.isSupplementary,
      @JsonKey(name: "addedAt") required this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "fileType") this.fileType});

  factory _$LibraryFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryFileImplFromJson(json);

  @override
  @JsonKey(name: "ino")
  final String ino;
  @override
  @JsonKey(name: "metadata")
  final LibraryFileMetadata metadata;
  @override
  @JsonKey(name: "isSupplementary")
  final bool? isSupplementary;
  @override
  @JsonKey(name: "addedAt")
  final int addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;
  @override
  @JsonKey(name: "fileType")
  final String? fileType;

  @override
  String toString() {
    return 'LibraryFile(ino: $ino, metadata: $metadata, isSupplementary: $isSupplementary, addedAt: $addedAt, updatedAt: $updatedAt, fileType: $fileType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryFileImpl &&
            (identical(other.ino, ino) || other.ino == ino) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.isSupplementary, isSupplementary) ||
                other.isSupplementary == isSupplementary) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ino, metadata, isSupplementary,
      addedAt, updatedAt, fileType);

  /// Create a copy of LibraryFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryFileImplCopyWith<_$LibraryFileImpl> get copyWith =>
      __$$LibraryFileImplCopyWithImpl<_$LibraryFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryFileImplToJson(
      this,
    );
  }
}

abstract class _LibraryFile implements LibraryFile {
  const factory _LibraryFile(
      {@JsonKey(name: "ino") required final String ino,
      @JsonKey(name: "metadata") required final LibraryFileMetadata metadata,
      @JsonKey(name: "isSupplementary") final bool? isSupplementary,
      @JsonKey(name: "addedAt") required final int addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt,
      @JsonKey(name: "fileType") final String? fileType}) = _$LibraryFileImpl;

  factory _LibraryFile.fromJson(Map<String, dynamic> json) =
      _$LibraryFileImpl.fromJson;

  @override
  @JsonKey(name: "ino")
  String get ino;
  @override
  @JsonKey(name: "metadata")
  LibraryFileMetadata get metadata;
  @override
  @JsonKey(name: "isSupplementary")
  bool? get isSupplementary;
  @override
  @JsonKey(name: "addedAt")
  int get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;
  @override
  @JsonKey(name: "fileType")
  String? get fileType;

  /// Create a copy of LibraryFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryFileImplCopyWith<_$LibraryFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
