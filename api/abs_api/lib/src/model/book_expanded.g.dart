// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_expanded.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookExpanded extends BookExpanded {
  @override
  final num? duration;
  @override
  final BookMetadataExpanded? metadata;
  @override
  final int? size;
  @override
  final BuiltList<AudioTrack>? tracks;
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

  factory _$BookExpanded([void Function(BookExpandedBuilder)? updates]) =>
      (new BookExpandedBuilder()..update(updates))._build();

  _$BookExpanded._(
      {this.duration,
      this.metadata,
      this.size,
      this.tracks,
      this.id,
      this.libraryItemId,
      this.coverPath,
      this.tags,
      this.audioFiles,
      this.chapters,
      this.missingParts,
      this.ebookFile})
      : super._();

  @override
  BookExpanded rebuild(void Function(BookExpandedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookExpandedBuilder toBuilder() => new BookExpandedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookExpanded &&
        duration == other.duration &&
        metadata == other.metadata &&
        size == other.size &&
        tracks == other.tracks &&
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
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, tracks.hashCode);
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
    return (newBuiltValueToStringHelper(r'BookExpanded')
          ..add('duration', duration)
          ..add('metadata', metadata)
          ..add('size', size)
          ..add('tracks', tracks)
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

class BookExpandedBuilder
    implements Builder<BookExpanded, BookExpandedBuilder>, BookBaseBuilder {
  _$BookExpanded? _$v;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(covariant num? duration) => _$this._duration = duration;

  BookMetadataExpandedBuilder? _metadata;
  BookMetadataExpandedBuilder get metadata =>
      _$this._metadata ??= new BookMetadataExpandedBuilder();
  set metadata(covariant BookMetadataExpandedBuilder? metadata) =>
      _$this._metadata = metadata;

  int? _size;
  int? get size => _$this._size;
  set size(covariant int? size) => _$this._size = size;

  ListBuilder<AudioTrack>? _tracks;
  ListBuilder<AudioTrack> get tracks =>
      _$this._tracks ??= new ListBuilder<AudioTrack>();
  set tracks(covariant ListBuilder<AudioTrack>? tracks) =>
      _$this._tracks = tracks;

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

  BookExpandedBuilder() {
    BookExpanded._defaults(this);
  }

  BookExpandedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _duration = $v.duration;
      _metadata = $v.metadata?.toBuilder();
      _size = $v.size;
      _tracks = $v.tracks?.toBuilder();
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
  void replace(covariant BookExpanded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookExpanded;
  }

  @override
  void update(void Function(BookExpandedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookExpanded build() => _build();

  _$BookExpanded _build() {
    _$BookExpanded _$result;
    try {
      _$result = _$v ??
          new _$BookExpanded._(
              duration: duration,
              metadata: _metadata?.build(),
              size: size,
              tracks: _tracks?.build(),
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
        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'tracks';
        _tracks?.build();

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
            r'BookExpanded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
