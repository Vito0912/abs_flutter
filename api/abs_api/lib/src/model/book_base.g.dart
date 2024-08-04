// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BookBaseBuilder {
  void replace(BookBase other);
  void update(void Function(BookBaseBuilder) updates);
  String? get id;
  set id(String? id);

  String? get libraryItemId;
  set libraryItemId(String? libraryItemId);

  String? get coverPath;
  set coverPath(String? coverPath);

  ListBuilder<String> get tags;
  set tags(ListBuilder<String>? tags);

  ListBuilder<AudioFile> get audioFiles;
  set audioFiles(ListBuilder<AudioFile>? audioFiles);

  ListBuilder<BookChapter?> get chapters;
  set chapters(ListBuilder<BookChapter?>? chapters);

  ListBuilder<int> get missingParts;
  set missingParts(ListBuilder<int>? missingParts);

  EbookFileBuilder get ebookFile;
  set ebookFile(EbookFileBuilder? ebookFile);
}

class _$$BookBase extends $BookBase {
  @override
  final String? id;
  @override
  final String? libraryItemId;
  @override
  final String? coverPath;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<AudioFile>? audioFiles;
  @override
  final BuiltList<BookChapter?>? chapters;
  @override
  final BuiltList<int>? missingParts;
  @override
  final EbookFile? ebookFile;

  factory _$$BookBase([void Function($BookBaseBuilder)? updates]) =>
      (new $BookBaseBuilder()..update(updates))._build();

  _$$BookBase._(
      {this.id,
      this.libraryItemId,
      this.coverPath,
      this.tags,
      this.audioFiles,
      this.chapters,
      this.missingParts,
      this.ebookFile})
      : super._();

  @override
  $BookBase rebuild(void Function($BookBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BookBaseBuilder toBuilder() => new $BookBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BookBase &&
        id == other.id &&
        libraryItemId == other.libraryItemId &&
        coverPath == other.coverPath &&
        tags == other.tags &&
        audioFiles == other.audioFiles &&
        chapters == other.chapters &&
        missingParts == other.missingParts &&
        ebookFile == other.ebookFile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, coverPath.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, audioFiles.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, missingParts.hashCode);
    _$hash = $jc(_$hash, ebookFile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$BookBase')
          ..add('id', id)
          ..add('libraryItemId', libraryItemId)
          ..add('coverPath', coverPath)
          ..add('tags', tags)
          ..add('audioFiles', audioFiles)
          ..add('chapters', chapters)
          ..add('missingParts', missingParts)
          ..add('ebookFile', ebookFile))
        .toString();
  }
}

class $BookBaseBuilder
    implements Builder<$BookBase, $BookBaseBuilder>, BookBaseBuilder {
  _$$BookBase? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(covariant String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  String? _coverPath;
  String? get coverPath => _$this._coverPath;
  set coverPath(covariant String? coverPath) => _$this._coverPath = coverPath;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(covariant ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<AudioFile>? _audioFiles;
  ListBuilder<AudioFile> get audioFiles =>
      _$this._audioFiles ??= new ListBuilder<AudioFile>();
  set audioFiles(covariant ListBuilder<AudioFile>? audioFiles) =>
      _$this._audioFiles = audioFiles;

  ListBuilder<BookChapter?>? _chapters;
  ListBuilder<BookChapter?> get chapters =>
      _$this._chapters ??= new ListBuilder<BookChapter?>();
  set chapters(covariant ListBuilder<BookChapter?>? chapters) =>
      _$this._chapters = chapters;

  ListBuilder<int>? _missingParts;
  ListBuilder<int> get missingParts =>
      _$this._missingParts ??= new ListBuilder<int>();
  set missingParts(covariant ListBuilder<int>? missingParts) =>
      _$this._missingParts = missingParts;

  EbookFileBuilder? _ebookFile;
  EbookFileBuilder get ebookFile =>
      _$this._ebookFile ??= new EbookFileBuilder();
  set ebookFile(covariant EbookFileBuilder? ebookFile) =>
      _$this._ebookFile = ebookFile;

  $BookBaseBuilder() {
    $BookBase._defaults(this);
  }

  $BookBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _libraryItemId = $v.libraryItemId;
      _coverPath = $v.coverPath;
      _tags = $v.tags?.toBuilder();
      _audioFiles = $v.audioFiles?.toBuilder();
      _chapters = $v.chapters?.toBuilder();
      _missingParts = $v.missingParts?.toBuilder();
      _ebookFile = $v.ebookFile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BookBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BookBase;
  }

  @override
  void update(void Function($BookBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BookBase build() => _build();

  _$$BookBase _build() {
    _$$BookBase _$result;
    try {
      _$result = _$v ??
          new _$$BookBase._(
              id: id,
              libraryItemId: libraryItemId,
              coverPath: coverPath,
              tags: _tags?.build(),
              audioFiles: _audioFiles?.build(),
              chapters: _chapters?.build(),
              missingParts: _missingParts?.build(),
              ebookFile: _ebookFile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'audioFiles';
        _audioFiles?.build();
        _$failedField = 'chapters';
        _chapters?.build();
        _$failedField = 'missingParts';
        _missingParts?.build();
        _$failedField = 'ebookFile';
        _ebookFile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$BookBase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
