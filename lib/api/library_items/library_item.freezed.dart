// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItem _$LibraryItemFromJson(Map<String, dynamic> json) {
  return _LibraryItem.fromJson(json);
}

/// @nodoc
mixin _$LibraryItem {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "ino")
  String get ino => throw _privateConstructorUsedError;
  @JsonKey(name: "oldLibraryItemId")
  String? get oldLibraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryId")
  String? get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: "folderId")
  String? get folderId => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "relPath")
  String? get relPath => throw _privateConstructorUsedError;
  @JsonKey(name: "isFile")
  bool? get isFile => throw _privateConstructorUsedError;
  @JsonKey(name: "mtimeMs")
  int? get mtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: "ctimeMs")
  int? get ctimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: "birthtimeMs")
  int? get birthtimeMs => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int? get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "lastScan")
  int? get lastScan => throw _privateConstructorUsedError;
  @JsonKey(name: "scanVersion")
  String? get scanVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "isMissing")
  bool? get isMissing => throw _privateConstructorUsedError;
  @JsonKey(name: "isInvalid")
  bool? get isInvalid => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaType")
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  Media? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryFiles")
  List<LibraryFile>? get libraryFiles => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "collapsedSeries")
  CollapsedSeries? get collapsedSeries => throw _privateConstructorUsedError;

  /// Serializes this LibraryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemCopyWith<LibraryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemCopyWith<$Res> {
  factory $LibraryItemCopyWith(
          LibraryItem value, $Res Function(LibraryItem) then) =
      _$LibraryItemCopyWithImpl<$Res, LibraryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "ino") String ino,
      @JsonKey(name: "oldLibraryItemId") String? oldLibraryItemId,
      @JsonKey(name: "libraryId") String? libraryId,
      @JsonKey(name: "folderId") String? folderId,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "relPath") String? relPath,
      @JsonKey(name: "isFile") bool? isFile,
      @JsonKey(name: "mtimeMs") int? mtimeMs,
      @JsonKey(name: "ctimeMs") int? ctimeMs,
      @JsonKey(name: "birthtimeMs") int? birthtimeMs,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "lastScan") int? lastScan,
      @JsonKey(name: "scanVersion") String? scanVersion,
      @JsonKey(name: "isMissing") bool? isMissing,
      @JsonKey(name: "isInvalid") bool? isInvalid,
      @JsonKey(name: "mediaType") String? mediaType,
      @JsonKey(name: "media") Media? media,
      @JsonKey(name: "libraryFiles") List<LibraryFile>? libraryFiles,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "collapsedSeries") CollapsedSeries? collapsedSeries});

  $MediaCopyWith<$Res>? get media;
  $CollapsedSeriesCopyWith<$Res>? get collapsedSeries;
}

/// @nodoc
class _$LibraryItemCopyWithImpl<$Res, $Val extends LibraryItem>
    implements $LibraryItemCopyWith<$Res> {
  _$LibraryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ino = null,
    Object? oldLibraryItemId = freezed,
    Object? libraryId = freezed,
    Object? folderId = freezed,
    Object? path = freezed,
    Object? relPath = freezed,
    Object? isFile = freezed,
    Object? mtimeMs = freezed,
    Object? ctimeMs = freezed,
    Object? birthtimeMs = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
    Object? lastScan = freezed,
    Object? scanVersion = freezed,
    Object? isMissing = freezed,
    Object? isInvalid = freezed,
    Object? mediaType = freezed,
    Object? media = freezed,
    Object? libraryFiles = freezed,
    Object? size = freezed,
    Object? collapsedSeries = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      oldLibraryItemId: freezed == oldLibraryItemId
          ? _value.oldLibraryItemId
          : oldLibraryItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String?,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      relPath: freezed == relPath
          ? _value.relPath
          : relPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFile: freezed == isFile
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      mtimeMs: freezed == mtimeMs
          ? _value.mtimeMs
          : mtimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      ctimeMs: freezed == ctimeMs
          ? _value.ctimeMs
          : ctimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      birthtimeMs: freezed == birthtimeMs
          ? _value.birthtimeMs
          : birthtimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      lastScan: freezed == lastScan
          ? _value.lastScan
          : lastScan // ignore: cast_nullable_to_non_nullable
              as int?,
      scanVersion: freezed == scanVersion
          ? _value.scanVersion
          : scanVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isMissing: freezed == isMissing
          ? _value.isMissing
          : isMissing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvalid: freezed == isInvalid
          ? _value.isInvalid
          : isInvalid // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
      libraryFiles: freezed == libraryFiles
          ? _value.libraryFiles
          : libraryFiles // ignore: cast_nullable_to_non_nullable
              as List<LibraryFile>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      collapsedSeries: freezed == collapsedSeries
          ? _value.collapsedSeries
          : collapsedSeries // ignore: cast_nullable_to_non_nullable
              as CollapsedSeries?,
    ) as $Val);
  }

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollapsedSeriesCopyWith<$Res>? get collapsedSeries {
    if (_value.collapsedSeries == null) {
      return null;
    }

    return $CollapsedSeriesCopyWith<$Res>(_value.collapsedSeries!, (value) {
      return _then(_value.copyWith(collapsedSeries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LibraryItemImplCopyWith<$Res>
    implements $LibraryItemCopyWith<$Res> {
  factory _$$LibraryItemImplCopyWith(
          _$LibraryItemImpl value, $Res Function(_$LibraryItemImpl) then) =
      __$$LibraryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "ino") String ino,
      @JsonKey(name: "oldLibraryItemId") String? oldLibraryItemId,
      @JsonKey(name: "libraryId") String? libraryId,
      @JsonKey(name: "folderId") String? folderId,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "relPath") String? relPath,
      @JsonKey(name: "isFile") bool? isFile,
      @JsonKey(name: "mtimeMs") int? mtimeMs,
      @JsonKey(name: "ctimeMs") int? ctimeMs,
      @JsonKey(name: "birthtimeMs") int? birthtimeMs,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "lastScan") int? lastScan,
      @JsonKey(name: "scanVersion") String? scanVersion,
      @JsonKey(name: "isMissing") bool? isMissing,
      @JsonKey(name: "isInvalid") bool? isInvalid,
      @JsonKey(name: "mediaType") String? mediaType,
      @JsonKey(name: "media") Media? media,
      @JsonKey(name: "libraryFiles") List<LibraryFile>? libraryFiles,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "collapsedSeries") CollapsedSeries? collapsedSeries});

  @override
  $MediaCopyWith<$Res>? get media;
  @override
  $CollapsedSeriesCopyWith<$Res>? get collapsedSeries;
}

/// @nodoc
class __$$LibraryItemImplCopyWithImpl<$Res>
    extends _$LibraryItemCopyWithImpl<$Res, _$LibraryItemImpl>
    implements _$$LibraryItemImplCopyWith<$Res> {
  __$$LibraryItemImplCopyWithImpl(
      _$LibraryItemImpl _value, $Res Function(_$LibraryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ino = null,
    Object? oldLibraryItemId = freezed,
    Object? libraryId = freezed,
    Object? folderId = freezed,
    Object? path = freezed,
    Object? relPath = freezed,
    Object? isFile = freezed,
    Object? mtimeMs = freezed,
    Object? ctimeMs = freezed,
    Object? birthtimeMs = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
    Object? lastScan = freezed,
    Object? scanVersion = freezed,
    Object? isMissing = freezed,
    Object? isInvalid = freezed,
    Object? mediaType = freezed,
    Object? media = freezed,
    Object? libraryFiles = freezed,
    Object? size = freezed,
    Object? collapsedSeries = freezed,
  }) {
    return _then(_$LibraryItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ino: null == ino
          ? _value.ino
          : ino // ignore: cast_nullable_to_non_nullable
              as String,
      oldLibraryItemId: freezed == oldLibraryItemId
          ? _value.oldLibraryItemId
          : oldLibraryItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryId: freezed == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String?,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      relPath: freezed == relPath
          ? _value.relPath
          : relPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFile: freezed == isFile
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      mtimeMs: freezed == mtimeMs
          ? _value.mtimeMs
          : mtimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      ctimeMs: freezed == ctimeMs
          ? _value.ctimeMs
          : ctimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      birthtimeMs: freezed == birthtimeMs
          ? _value.birthtimeMs
          : birthtimeMs // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      lastScan: freezed == lastScan
          ? _value.lastScan
          : lastScan // ignore: cast_nullable_to_non_nullable
              as int?,
      scanVersion: freezed == scanVersion
          ? _value.scanVersion
          : scanVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      isMissing: freezed == isMissing
          ? _value.isMissing
          : isMissing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInvalid: freezed == isInvalid
          ? _value.isInvalid
          : isInvalid // ignore: cast_nullable_to_non_nullable
              as bool?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as Media?,
      libraryFiles: freezed == libraryFiles
          ? _value._libraryFiles
          : libraryFiles // ignore: cast_nullable_to_non_nullable
              as List<LibraryFile>?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      collapsedSeries: freezed == collapsedSeries
          ? _value.collapsedSeries
          : collapsedSeries // ignore: cast_nullable_to_non_nullable
              as CollapsedSeries?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemImpl implements _LibraryItem {
  const _$LibraryItemImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "ino") required this.ino,
      @JsonKey(name: "oldLibraryItemId") this.oldLibraryItemId,
      @JsonKey(name: "libraryId") this.libraryId,
      @JsonKey(name: "folderId") this.folderId,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "relPath") this.relPath,
      @JsonKey(name: "isFile") this.isFile,
      @JsonKey(name: "mtimeMs") this.mtimeMs,
      @JsonKey(name: "ctimeMs") this.ctimeMs,
      @JsonKey(name: "birthtimeMs") this.birthtimeMs,
      @JsonKey(name: "addedAt") this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "lastScan") this.lastScan,
      @JsonKey(name: "scanVersion") this.scanVersion,
      @JsonKey(name: "isMissing") this.isMissing,
      @JsonKey(name: "isInvalid") this.isInvalid,
      @JsonKey(name: "mediaType") this.mediaType,
      @JsonKey(name: "media") required this.media,
      @JsonKey(name: "libraryFiles")
      required final List<LibraryFile>? libraryFiles,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "collapsedSeries") this.collapsedSeries})
      : _libraryFiles = libraryFiles;

  factory _$LibraryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "ino")
  final String ino;
  @override
  @JsonKey(name: "oldLibraryItemId")
  final String? oldLibraryItemId;
  @override
  @JsonKey(name: "libraryId")
  final String? libraryId;
  @override
  @JsonKey(name: "folderId")
  final String? folderId;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "relPath")
  final String? relPath;
  @override
  @JsonKey(name: "isFile")
  final bool? isFile;
  @override
  @JsonKey(name: "mtimeMs")
  final int? mtimeMs;
  @override
  @JsonKey(name: "ctimeMs")
  final int? ctimeMs;
  @override
  @JsonKey(name: "birthtimeMs")
  final int? birthtimeMs;
  @override
  @JsonKey(name: "addedAt")
  final int? addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;
  @override
  @JsonKey(name: "lastScan")
  final int? lastScan;
  @override
  @JsonKey(name: "scanVersion")
  final String? scanVersion;
  @override
  @JsonKey(name: "isMissing")
  final bool? isMissing;
  @override
  @JsonKey(name: "isInvalid")
  final bool? isInvalid;
  @override
  @JsonKey(name: "mediaType")
  final String? mediaType;
  @override
  @JsonKey(name: "media")
  final Media? media;
  final List<LibraryFile>? _libraryFiles;
  @override
  @JsonKey(name: "libraryFiles")
  List<LibraryFile>? get libraryFiles {
    final value = _libraryFiles;
    if (value == null) return null;
    if (_libraryFiles is EqualUnmodifiableListView) return _libraryFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "size")
  final int? size;
  @override
  @JsonKey(name: "collapsedSeries")
  final CollapsedSeries? collapsedSeries;

  @override
  String toString() {
    return 'LibraryItem(id: $id, ino: $ino, oldLibraryItemId: $oldLibraryItemId, libraryId: $libraryId, folderId: $folderId, path: $path, relPath: $relPath, isFile: $isFile, mtimeMs: $mtimeMs, ctimeMs: $ctimeMs, birthtimeMs: $birthtimeMs, addedAt: $addedAt, updatedAt: $updatedAt, lastScan: $lastScan, scanVersion: $scanVersion, isMissing: $isMissing, isInvalid: $isInvalid, mediaType: $mediaType, media: $media, libraryFiles: $libraryFiles, size: $size, collapsedSeries: $collapsedSeries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ino, ino) || other.ino == ino) &&
            (identical(other.oldLibraryItemId, oldLibraryItemId) ||
                other.oldLibraryItemId == oldLibraryItemId) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.relPath, relPath) || other.relPath == relPath) &&
            (identical(other.isFile, isFile) || other.isFile == isFile) &&
            (identical(other.mtimeMs, mtimeMs) || other.mtimeMs == mtimeMs) &&
            (identical(other.ctimeMs, ctimeMs) || other.ctimeMs == ctimeMs) &&
            (identical(other.birthtimeMs, birthtimeMs) ||
                other.birthtimeMs == birthtimeMs) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastScan, lastScan) ||
                other.lastScan == lastScan) &&
            (identical(other.scanVersion, scanVersion) ||
                other.scanVersion == scanVersion) &&
            (identical(other.isMissing, isMissing) ||
                other.isMissing == isMissing) &&
            (identical(other.isInvalid, isInvalid) ||
                other.isInvalid == isInvalid) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.media, media) || other.media == media) &&
            const DeepCollectionEquality()
                .equals(other._libraryFiles, _libraryFiles) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.collapsedSeries, collapsedSeries) ||
                other.collapsedSeries == collapsedSeries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ino,
        oldLibraryItemId,
        libraryId,
        folderId,
        path,
        relPath,
        isFile,
        mtimeMs,
        ctimeMs,
        birthtimeMs,
        addedAt,
        updatedAt,
        lastScan,
        scanVersion,
        isMissing,
        isInvalid,
        mediaType,
        media,
        const DeepCollectionEquality().hash(_libraryFiles),
        size,
        collapsedSeries
      ]);

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemImplCopyWith<_$LibraryItemImpl> get copyWith =>
      __$$LibraryItemImplCopyWithImpl<_$LibraryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemImplToJson(
      this,
    );
  }
}

abstract class _LibraryItem implements LibraryItem {
  const factory _LibraryItem(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "ino") required final String ino,
      @JsonKey(name: "oldLibraryItemId") final String? oldLibraryItemId,
      @JsonKey(name: "libraryId") final String? libraryId,
      @JsonKey(name: "folderId") final String? folderId,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "relPath") final String? relPath,
      @JsonKey(name: "isFile") final bool? isFile,
      @JsonKey(name: "mtimeMs") final int? mtimeMs,
      @JsonKey(name: "ctimeMs") final int? ctimeMs,
      @JsonKey(name: "birthtimeMs") final int? birthtimeMs,
      @JsonKey(name: "addedAt") final int? addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt,
      @JsonKey(name: "lastScan") final int? lastScan,
      @JsonKey(name: "scanVersion") final String? scanVersion,
      @JsonKey(name: "isMissing") final bool? isMissing,
      @JsonKey(name: "isInvalid") final bool? isInvalid,
      @JsonKey(name: "mediaType") final String? mediaType,
      @JsonKey(name: "media") required final Media? media,
      @JsonKey(name: "libraryFiles")
      required final List<LibraryFile>? libraryFiles,
      @JsonKey(name: "size") final int? size,
      @JsonKey(name: "collapsedSeries")
      final CollapsedSeries? collapsedSeries}) = _$LibraryItemImpl;

  factory _LibraryItem.fromJson(Map<String, dynamic> json) =
      _$LibraryItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "ino")
  String get ino;
  @override
  @JsonKey(name: "oldLibraryItemId")
  String? get oldLibraryItemId;
  @override
  @JsonKey(name: "libraryId")
  String? get libraryId;
  @override
  @JsonKey(name: "folderId")
  String? get folderId;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "relPath")
  String? get relPath;
  @override
  @JsonKey(name: "isFile")
  bool? get isFile;
  @override
  @JsonKey(name: "mtimeMs")
  int? get mtimeMs;
  @override
  @JsonKey(name: "ctimeMs")
  int? get ctimeMs;
  @override
  @JsonKey(name: "birthtimeMs")
  int? get birthtimeMs;
  @override
  @JsonKey(name: "addedAt")
  int? get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;
  @override
  @JsonKey(name: "lastScan")
  int? get lastScan;
  @override
  @JsonKey(name: "scanVersion")
  String? get scanVersion;
  @override
  @JsonKey(name: "isMissing")
  bool? get isMissing;
  @override
  @JsonKey(name: "isInvalid")
  bool? get isInvalid;
  @override
  @JsonKey(name: "mediaType")
  String? get mediaType;
  @override
  @JsonKey(name: "media")
  Media? get media;
  @override
  @JsonKey(name: "libraryFiles")
  List<LibraryFile>? get libraryFiles;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "collapsedSeries")
  CollapsedSeries? get collapsedSeries;

  /// Create a copy of LibraryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemImplCopyWith<_$LibraryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
