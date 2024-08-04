// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileMetadata extends FileMetadata {
  @override
  final String? filename;
  @override
  final String? ext;
  @override
  final String? path;
  @override
  final String? relPath;
  @override
  final int? size;
  @override
  final int? mtimeMs;
  @override
  final int? ctimeMs;
  @override
  final int? birthtimeMs;

  factory _$FileMetadata([void Function(FileMetadataBuilder)? updates]) =>
      (new FileMetadataBuilder()..update(updates))._build();

  _$FileMetadata._(
      {this.filename,
      this.ext,
      this.path,
      this.relPath,
      this.size,
      this.mtimeMs,
      this.ctimeMs,
      this.birthtimeMs})
      : super._();

  @override
  FileMetadata rebuild(void Function(FileMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileMetadataBuilder toBuilder() => new FileMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMetadata &&
        filename == other.filename &&
        ext == other.ext &&
        path == other.path &&
        relPath == other.relPath &&
        size == other.size &&
        mtimeMs == other.mtimeMs &&
        ctimeMs == other.ctimeMs &&
        birthtimeMs == other.birthtimeMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, ext.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, relPath.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, mtimeMs.hashCode);
    _$hash = $jc(_$hash, ctimeMs.hashCode);
    _$hash = $jc(_$hash, birthtimeMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileMetadata')
          ..add('filename', filename)
          ..add('ext', ext)
          ..add('path', path)
          ..add('relPath', relPath)
          ..add('size', size)
          ..add('mtimeMs', mtimeMs)
          ..add('ctimeMs', ctimeMs)
          ..add('birthtimeMs', birthtimeMs))
        .toString();
  }
}

class FileMetadataBuilder
    implements Builder<FileMetadata, FileMetadataBuilder> {
  _$FileMetadata? _$v;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _ext;
  String? get ext => _$this._ext;
  set ext(String? ext) => _$this._ext = ext;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _relPath;
  String? get relPath => _$this._relPath;
  set relPath(String? relPath) => _$this._relPath = relPath;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _mtimeMs;
  int? get mtimeMs => _$this._mtimeMs;
  set mtimeMs(int? mtimeMs) => _$this._mtimeMs = mtimeMs;

  int? _ctimeMs;
  int? get ctimeMs => _$this._ctimeMs;
  set ctimeMs(int? ctimeMs) => _$this._ctimeMs = ctimeMs;

  int? _birthtimeMs;
  int? get birthtimeMs => _$this._birthtimeMs;
  set birthtimeMs(int? birthtimeMs) => _$this._birthtimeMs = birthtimeMs;

  FileMetadataBuilder() {
    FileMetadata._defaults(this);
  }

  FileMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filename = $v.filename;
      _ext = $v.ext;
      _path = $v.path;
      _relPath = $v.relPath;
      _size = $v.size;
      _mtimeMs = $v.mtimeMs;
      _ctimeMs = $v.ctimeMs;
      _birthtimeMs = $v.birthtimeMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileMetadata;
  }

  @override
  void update(void Function(FileMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileMetadata build() => _build();

  _$FileMetadata _build() {
    final _$result = _$v ??
        new _$FileMetadata._(
            filename: filename,
            ext: ext,
            path: path,
            relPath: relPath,
            size: size,
            mtimeMs: mtimeMs,
            ctimeMs: ctimeMs,
            birthtimeMs: birthtimeMs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
