// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EbookFile extends EbookFile {
  @override
  final String? ino;
  @override
  final FileMetadata? metadata;
  @override
  final String? ebookFormat;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;

  factory _$EbookFile([void Function(EbookFileBuilder)? updates]) =>
      (new EbookFileBuilder()..update(updates))._build();

  _$EbookFile._(
      {this.ino, this.metadata, this.ebookFormat, this.addedAt, this.updatedAt})
      : super._();

  @override
  EbookFile rebuild(void Function(EbookFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EbookFileBuilder toBuilder() => new EbookFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EbookFile &&
        ino == other.ino &&
        metadata == other.metadata &&
        ebookFormat == other.ebookFormat &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ino.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, ebookFormat.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EbookFile')
          ..add('ino', ino)
          ..add('metadata', metadata)
          ..add('ebookFormat', ebookFormat)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EbookFileBuilder implements Builder<EbookFile, EbookFileBuilder> {
  _$EbookFile? _$v;

  String? _ino;
  String? get ino => _$this._ino;
  set ino(String? ino) => _$this._ino = ino;

  FileMetadataBuilder? _metadata;
  FileMetadataBuilder get metadata =>
      _$this._metadata ??= new FileMetadataBuilder();
  set metadata(FileMetadataBuilder? metadata) => _$this._metadata = metadata;

  String? _ebookFormat;
  String? get ebookFormat => _$this._ebookFormat;
  set ebookFormat(String? ebookFormat) => _$this._ebookFormat = ebookFormat;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  EbookFileBuilder() {
    EbookFile._defaults(this);
  }

  EbookFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ino = $v.ino;
      _metadata = $v.metadata?.toBuilder();
      _ebookFormat = $v.ebookFormat;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EbookFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EbookFile;
  }

  @override
  void update(void Function(EbookFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EbookFile build() => _build();

  _$EbookFile _build() {
    _$EbookFile _$result;
    try {
      _$result = _$v ??
          new _$EbookFile._(
              ino: ino,
              metadata: _metadata?.build(),
              ebookFormat: ebookFormat,
              addedAt: addedAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EbookFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
