// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_minified.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookMinified extends BookMinified {
  @override
  final BookMetadataMinified? metadata;
  @override
  final String? coverPath;
  @override
  final BuiltList<String>? tags;
  @override
  final int? numTracks;
  @override
  final int? numAudioFiles;
  @override
  final int? numChapters;
  @override
  final int? numMissingParts;
  @override
  final int? numInvalidAudioFiles;
  @override
  final num? duration;
  @override
  final int? size;
  @override
  final String? ebookFormat;

  factory _$BookMinified([void Function(BookMinifiedBuilder)? updates]) =>
      (new BookMinifiedBuilder()..update(updates))._build();

  _$BookMinified._(
      {this.metadata,
      this.coverPath,
      this.tags,
      this.numTracks,
      this.numAudioFiles,
      this.numChapters,
      this.numMissingParts,
      this.numInvalidAudioFiles,
      this.duration,
      this.size,
      this.ebookFormat})
      : super._();

  @override
  BookMinified rebuild(void Function(BookMinifiedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookMinifiedBuilder toBuilder() => new BookMinifiedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookMinified &&
        metadata == other.metadata &&
        coverPath == other.coverPath &&
        tags == other.tags &&
        numTracks == other.numTracks &&
        numAudioFiles == other.numAudioFiles &&
        numChapters == other.numChapters &&
        numMissingParts == other.numMissingParts &&
        numInvalidAudioFiles == other.numInvalidAudioFiles &&
        duration == other.duration &&
        size == other.size &&
        ebookFormat == other.ebookFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, coverPath.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, numTracks.hashCode);
    _$hash = $jc(_$hash, numAudioFiles.hashCode);
    _$hash = $jc(_$hash, numChapters.hashCode);
    _$hash = $jc(_$hash, numMissingParts.hashCode);
    _$hash = $jc(_$hash, numInvalidAudioFiles.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, ebookFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookMinified')
          ..add('metadata', metadata)
          ..add('coverPath', coverPath)
          ..add('tags', tags)
          ..add('numTracks', numTracks)
          ..add('numAudioFiles', numAudioFiles)
          ..add('numChapters', numChapters)
          ..add('numMissingParts', numMissingParts)
          ..add('numInvalidAudioFiles', numInvalidAudioFiles)
          ..add('duration', duration)
          ..add('size', size)
          ..add('ebookFormat', ebookFormat))
        .toString();
  }
}

class BookMinifiedBuilder
    implements Builder<BookMinified, BookMinifiedBuilder> {
  _$BookMinified? _$v;

  BookMetadataMinifiedBuilder? _metadata;
  BookMetadataMinifiedBuilder get metadata =>
      _$this._metadata ??= new BookMetadataMinifiedBuilder();
  set metadata(BookMetadataMinifiedBuilder? metadata) =>
      _$this._metadata = metadata;

  String? _coverPath;
  String? get coverPath => _$this._coverPath;
  set coverPath(String? coverPath) => _$this._coverPath = coverPath;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  int? _numTracks;
  int? get numTracks => _$this._numTracks;
  set numTracks(int? numTracks) => _$this._numTracks = numTracks;

  int? _numAudioFiles;
  int? get numAudioFiles => _$this._numAudioFiles;
  set numAudioFiles(int? numAudioFiles) =>
      _$this._numAudioFiles = numAudioFiles;

  int? _numChapters;
  int? get numChapters => _$this._numChapters;
  set numChapters(int? numChapters) => _$this._numChapters = numChapters;

  int? _numMissingParts;
  int? get numMissingParts => _$this._numMissingParts;
  set numMissingParts(int? numMissingParts) =>
      _$this._numMissingParts = numMissingParts;

  int? _numInvalidAudioFiles;
  int? get numInvalidAudioFiles => _$this._numInvalidAudioFiles;
  set numInvalidAudioFiles(int? numInvalidAudioFiles) =>
      _$this._numInvalidAudioFiles = numInvalidAudioFiles;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _ebookFormat;
  String? get ebookFormat => _$this._ebookFormat;
  set ebookFormat(String? ebookFormat) => _$this._ebookFormat = ebookFormat;

  BookMinifiedBuilder() {
    BookMinified._defaults(this);
  }

  BookMinifiedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _coverPath = $v.coverPath;
      _tags = $v.tags?.toBuilder();
      _numTracks = $v.numTracks;
      _numAudioFiles = $v.numAudioFiles;
      _numChapters = $v.numChapters;
      _numMissingParts = $v.numMissingParts;
      _numInvalidAudioFiles = $v.numInvalidAudioFiles;
      _duration = $v.duration;
      _size = $v.size;
      _ebookFormat = $v.ebookFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookMinified other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookMinified;
  }

  @override
  void update(void Function(BookMinifiedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookMinified build() => _build();

  _$BookMinified _build() {
    _$BookMinified _$result;
    try {
      _$result = _$v ??
          new _$BookMinified._(
              metadata: _metadata?.build(),
              coverPath: coverPath,
              tags: _tags?.build(),
              numTracks: numTracks,
              numAudioFiles: numAudioFiles,
              numChapters: numChapters,
              numMissingParts: numMissingParts,
              numInvalidAudioFiles: numInvalidAudioFiles,
              duration: duration,
              size: size,
              ebookFormat: ebookFormat);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BookMinified', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
