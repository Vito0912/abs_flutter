// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryFile extends LibraryFile {
  @override
  final String? ino;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;
  @override
  final String? fileType;
  @override
  final FileMetadata? metadata;

  factory _$LibraryFile([void Function(LibraryFileBuilder)? updates]) =>
      (new LibraryFileBuilder()..update(updates))._build();

  _$LibraryFile._(
      {this.ino, this.addedAt, this.updatedAt, this.fileType, this.metadata})
      : super._();

  @override
  LibraryFile rebuild(void Function(LibraryFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryFileBuilder toBuilder() => new LibraryFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryFile &&
        ino == other.ino &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        fileType == other.fileType &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ino.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, fileType.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryFile')
          ..add('ino', ino)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('fileType', fileType)
          ..add('metadata', metadata))
        .toString();
  }
}

class LibraryFileBuilder implements Builder<LibraryFile, LibraryFileBuilder> {
  _$LibraryFile? _$v;

  String? _ino;
  String? get ino => _$this._ino;
  set ino(String? ino) => _$this._ino = ino;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  String? _fileType;
  String? get fileType => _$this._fileType;
  set fileType(String? fileType) => _$this._fileType = fileType;

  FileMetadataBuilder? _metadata;
  FileMetadataBuilder get metadata =>
      _$this._metadata ??= new FileMetadataBuilder();
  set metadata(FileMetadataBuilder? metadata) => _$this._metadata = metadata;

  LibraryFileBuilder() {
    LibraryFile._defaults(this);
  }

  LibraryFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ino = $v.ino;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _fileType = $v.fileType;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryFile;
  }

  @override
  void update(void Function(LibraryFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryFile build() => _build();

  _$LibraryFile _build() {
    _$LibraryFile _$result;
    try {
      _$result = _$v ??
          new _$LibraryFile._(
              ino: ino,
              addedAt: addedAt,
              updatedAt: updatedAt,
              fileType: fileType,
              metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
