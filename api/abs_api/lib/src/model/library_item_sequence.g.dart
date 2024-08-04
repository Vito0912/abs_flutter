// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_sequence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryItemSequence extends LibraryItemSequence {
  @override
  final String? sequence;
  @override
  final String? id;
  @override
  final String? oldLibraryItemId;
  @override
  final String? ino;
  @override
  final String? libraryId;
  @override
  final String? folderId;
  @override
  final String? path;
  @override
  final String? relPath;
  @override
  final bool? isFile;
  @override
  final int? mtimeMs;
  @override
  final int? ctimeMs;
  @override
  final int? birthtimeMs;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;
  @override
  final bool? isMissing;
  @override
  final bool? isInvalid;
  @override
  final MediaType? mediaType;
  @override
  final Book? media;

  factory _$LibraryItemSequence(
          [void Function(LibraryItemSequenceBuilder)? updates]) =>
      (new LibraryItemSequenceBuilder()..update(updates))._build();

  _$LibraryItemSequence._(
      {this.sequence,
      this.id,
      this.oldLibraryItemId,
      this.ino,
      this.libraryId,
      this.folderId,
      this.path,
      this.relPath,
      this.isFile,
      this.mtimeMs,
      this.ctimeMs,
      this.birthtimeMs,
      this.addedAt,
      this.updatedAt,
      this.isMissing,
      this.isInvalid,
      this.mediaType,
      this.media})
      : super._();

  @override
  LibraryItemSequence rebuild(
          void Function(LibraryItemSequenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryItemSequenceBuilder toBuilder() =>
      new LibraryItemSequenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryItemSequence &&
        sequence == other.sequence &&
        id == other.id &&
        oldLibraryItemId == other.oldLibraryItemId &&
        ino == other.ino &&
        libraryId == other.libraryId &&
        folderId == other.folderId &&
        path == other.path &&
        relPath == other.relPath &&
        isFile == other.isFile &&
        mtimeMs == other.mtimeMs &&
        ctimeMs == other.ctimeMs &&
        birthtimeMs == other.birthtimeMs &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        isMissing == other.isMissing &&
        isInvalid == other.isInvalid &&
        mediaType == other.mediaType &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, oldLibraryItemId.hashCode);
    _$hash = $jc(_$hash, ino.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, folderId.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, relPath.hashCode);
    _$hash = $jc(_$hash, isFile.hashCode);
    _$hash = $jc(_$hash, mtimeMs.hashCode);
    _$hash = $jc(_$hash, ctimeMs.hashCode);
    _$hash = $jc(_$hash, birthtimeMs.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, isMissing.hashCode);
    _$hash = $jc(_$hash, isInvalid.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryItemSequence')
          ..add('sequence', sequence)
          ..add('id', id)
          ..add('oldLibraryItemId', oldLibraryItemId)
          ..add('ino', ino)
          ..add('libraryId', libraryId)
          ..add('folderId', folderId)
          ..add('path', path)
          ..add('relPath', relPath)
          ..add('isFile', isFile)
          ..add('mtimeMs', mtimeMs)
          ..add('ctimeMs', ctimeMs)
          ..add('birthtimeMs', birthtimeMs)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('isMissing', isMissing)
          ..add('isInvalid', isInvalid)
          ..add('mediaType', mediaType)
          ..add('media', media))
        .toString();
  }
}

class LibraryItemSequenceBuilder
    implements
        Builder<LibraryItemSequence, LibraryItemSequenceBuilder>,
        LibraryItemBaseBuilder {
  _$LibraryItemSequence? _$v;

  String? _sequence;
  String? get sequence => _$this._sequence;
  set sequence(covariant String? sequence) => _$this._sequence = sequence;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _oldLibraryItemId;
  String? get oldLibraryItemId => _$this._oldLibraryItemId;
  set oldLibraryItemId(covariant String? oldLibraryItemId) =>
      _$this._oldLibraryItemId = oldLibraryItemId;

  String? _ino;
  String? get ino => _$this._ino;
  set ino(covariant String? ino) => _$this._ino = ino;

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(covariant String? libraryId) => _$this._libraryId = libraryId;

  String? _folderId;
  String? get folderId => _$this._folderId;
  set folderId(covariant String? folderId) => _$this._folderId = folderId;

  String? _path;
  String? get path => _$this._path;
  set path(covariant String? path) => _$this._path = path;

  String? _relPath;
  String? get relPath => _$this._relPath;
  set relPath(covariant String? relPath) => _$this._relPath = relPath;

  bool? _isFile;
  bool? get isFile => _$this._isFile;
  set isFile(covariant bool? isFile) => _$this._isFile = isFile;

  int? _mtimeMs;
  int? get mtimeMs => _$this._mtimeMs;
  set mtimeMs(covariant int? mtimeMs) => _$this._mtimeMs = mtimeMs;

  int? _ctimeMs;
  int? get ctimeMs => _$this._ctimeMs;
  set ctimeMs(covariant int? ctimeMs) => _$this._ctimeMs = ctimeMs;

  int? _birthtimeMs;
  int? get birthtimeMs => _$this._birthtimeMs;
  set birthtimeMs(covariant int? birthtimeMs) =>
      _$this._birthtimeMs = birthtimeMs;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(covariant int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant int? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _isMissing;
  bool? get isMissing => _$this._isMissing;
  set isMissing(covariant bool? isMissing) => _$this._isMissing = isMissing;

  bool? _isInvalid;
  bool? get isInvalid => _$this._isInvalid;
  set isInvalid(covariant bool? isInvalid) => _$this._isInvalid = isInvalid;

  MediaType? _mediaType;
  MediaType? get mediaType => _$this._mediaType;
  set mediaType(covariant MediaType? mediaType) =>
      _$this._mediaType = mediaType;

  BookBuilder? _media;
  BookBuilder get media => _$this._media ??= new BookBuilder();
  set media(covariant BookBuilder? media) => _$this._media = media;

  LibraryItemSequenceBuilder() {
    LibraryItemSequence._defaults(this);
  }

  LibraryItemSequenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sequence = $v.sequence;
      _id = $v.id;
      _oldLibraryItemId = $v.oldLibraryItemId;
      _ino = $v.ino;
      _libraryId = $v.libraryId;
      _folderId = $v.folderId;
      _path = $v.path;
      _relPath = $v.relPath;
      _isFile = $v.isFile;
      _mtimeMs = $v.mtimeMs;
      _ctimeMs = $v.ctimeMs;
      _birthtimeMs = $v.birthtimeMs;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _isMissing = $v.isMissing;
      _isInvalid = $v.isInvalid;
      _mediaType = $v.mediaType;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant LibraryItemSequence other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryItemSequence;
  }

  @override
  void update(void Function(LibraryItemSequenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryItemSequence build() => _build();

  _$LibraryItemSequence _build() {
    _$LibraryItemSequence _$result;
    try {
      _$result = _$v ??
          new _$LibraryItemSequence._(
              sequence: sequence,
              id: id,
              oldLibraryItemId: oldLibraryItemId,
              ino: ino,
              libraryId: libraryId,
              folderId: folderId,
              path: path,
              relPath: relPath,
              isFile: isFile,
              mtimeMs: mtimeMs,
              ctimeMs: ctimeMs,
              birthtimeMs: birthtimeMs,
              addedAt: addedAt,
              updatedAt: updatedAt,
              isMissing: isMissing,
              isInvalid: isInvalid,
              mediaType: mediaType,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryItemSequence', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
