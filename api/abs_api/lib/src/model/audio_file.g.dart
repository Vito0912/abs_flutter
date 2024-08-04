// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AudioFile extends AudioFile {
  @override
  final int? index;
  @override
  final String? ino;
  @override
  final FileMetadata? metadata;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;
  @override
  final int? trackNumFromMeta;
  @override
  final String? discNumFromMeta;
  @override
  final int? trackNumFromFilename;
  @override
  final String? discNumFromFilename;
  @override
  final bool? manuallyVerified;
  @override
  final bool? invalid;
  @override
  final bool? exclude;
  @override
  final String? error;
  @override
  final String? format;
  @override
  final num? duration;
  @override
  final int? bitRate;
  @override
  final String? language;
  @override
  final String? codec;
  @override
  final String? timeBase;
  @override
  final int? channels;
  @override
  final String? channelLayout;
  @override
  final BuiltList<BookChapter?>? chapters;
  @override
  final String? embeddedCoverArt;
  @override
  final AudioMetaTags? metaTags;
  @override
  final String? mimeType;

  factory _$AudioFile([void Function(AudioFileBuilder)? updates]) =>
      (new AudioFileBuilder()..update(updates))._build();

  _$AudioFile._(
      {this.index,
      this.ino,
      this.metadata,
      this.addedAt,
      this.updatedAt,
      this.trackNumFromMeta,
      this.discNumFromMeta,
      this.trackNumFromFilename,
      this.discNumFromFilename,
      this.manuallyVerified,
      this.invalid,
      this.exclude,
      this.error,
      this.format,
      this.duration,
      this.bitRate,
      this.language,
      this.codec,
      this.timeBase,
      this.channels,
      this.channelLayout,
      this.chapters,
      this.embeddedCoverArt,
      this.metaTags,
      this.mimeType})
      : super._();

  @override
  AudioFile rebuild(void Function(AudioFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudioFileBuilder toBuilder() => new AudioFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudioFile &&
        index == other.index &&
        ino == other.ino &&
        metadata == other.metadata &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        trackNumFromMeta == other.trackNumFromMeta &&
        discNumFromMeta == other.discNumFromMeta &&
        trackNumFromFilename == other.trackNumFromFilename &&
        discNumFromFilename == other.discNumFromFilename &&
        manuallyVerified == other.manuallyVerified &&
        invalid == other.invalid &&
        exclude == other.exclude &&
        error == other.error &&
        format == other.format &&
        duration == other.duration &&
        bitRate == other.bitRate &&
        language == other.language &&
        codec == other.codec &&
        timeBase == other.timeBase &&
        channels == other.channels &&
        channelLayout == other.channelLayout &&
        chapters == other.chapters &&
        embeddedCoverArt == other.embeddedCoverArt &&
        metaTags == other.metaTags &&
        mimeType == other.mimeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, ino.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, trackNumFromMeta.hashCode);
    _$hash = $jc(_$hash, discNumFromMeta.hashCode);
    _$hash = $jc(_$hash, trackNumFromFilename.hashCode);
    _$hash = $jc(_$hash, discNumFromFilename.hashCode);
    _$hash = $jc(_$hash, manuallyVerified.hashCode);
    _$hash = $jc(_$hash, invalid.hashCode);
    _$hash = $jc(_$hash, exclude.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, bitRate.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, codec.hashCode);
    _$hash = $jc(_$hash, timeBase.hashCode);
    _$hash = $jc(_$hash, channels.hashCode);
    _$hash = $jc(_$hash, channelLayout.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, embeddedCoverArt.hashCode);
    _$hash = $jc(_$hash, metaTags.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AudioFile')
          ..add('index', index)
          ..add('ino', ino)
          ..add('metadata', metadata)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('trackNumFromMeta', trackNumFromMeta)
          ..add('discNumFromMeta', discNumFromMeta)
          ..add('trackNumFromFilename', trackNumFromFilename)
          ..add('discNumFromFilename', discNumFromFilename)
          ..add('manuallyVerified', manuallyVerified)
          ..add('invalid', invalid)
          ..add('exclude', exclude)
          ..add('error', error)
          ..add('format', format)
          ..add('duration', duration)
          ..add('bitRate', bitRate)
          ..add('language', language)
          ..add('codec', codec)
          ..add('timeBase', timeBase)
          ..add('channels', channels)
          ..add('channelLayout', channelLayout)
          ..add('chapters', chapters)
          ..add('embeddedCoverArt', embeddedCoverArt)
          ..add('metaTags', metaTags)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class AudioFileBuilder implements Builder<AudioFile, AudioFileBuilder> {
  _$AudioFile? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _ino;
  String? get ino => _$this._ino;
  set ino(String? ino) => _$this._ino = ino;

  FileMetadataBuilder? _metadata;
  FileMetadataBuilder get metadata =>
      _$this._metadata ??= new FileMetadataBuilder();
  set metadata(FileMetadataBuilder? metadata) => _$this._metadata = metadata;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  int? _trackNumFromMeta;
  int? get trackNumFromMeta => _$this._trackNumFromMeta;
  set trackNumFromMeta(int? trackNumFromMeta) =>
      _$this._trackNumFromMeta = trackNumFromMeta;

  String? _discNumFromMeta;
  String? get discNumFromMeta => _$this._discNumFromMeta;
  set discNumFromMeta(String? discNumFromMeta) =>
      _$this._discNumFromMeta = discNumFromMeta;

  int? _trackNumFromFilename;
  int? get trackNumFromFilename => _$this._trackNumFromFilename;
  set trackNumFromFilename(int? trackNumFromFilename) =>
      _$this._trackNumFromFilename = trackNumFromFilename;

  String? _discNumFromFilename;
  String? get discNumFromFilename => _$this._discNumFromFilename;
  set discNumFromFilename(String? discNumFromFilename) =>
      _$this._discNumFromFilename = discNumFromFilename;

  bool? _manuallyVerified;
  bool? get manuallyVerified => _$this._manuallyVerified;
  set manuallyVerified(bool? manuallyVerified) =>
      _$this._manuallyVerified = manuallyVerified;

  bool? _invalid;
  bool? get invalid => _$this._invalid;
  set invalid(bool? invalid) => _$this._invalid = invalid;

  bool? _exclude;
  bool? get exclude => _$this._exclude;
  set exclude(bool? exclude) => _$this._exclude = exclude;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  int? _bitRate;
  int? get bitRate => _$this._bitRate;
  set bitRate(int? bitRate) => _$this._bitRate = bitRate;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _codec;
  String? get codec => _$this._codec;
  set codec(String? codec) => _$this._codec = codec;

  String? _timeBase;
  String? get timeBase => _$this._timeBase;
  set timeBase(String? timeBase) => _$this._timeBase = timeBase;

  int? _channels;
  int? get channels => _$this._channels;
  set channels(int? channels) => _$this._channels = channels;

  String? _channelLayout;
  String? get channelLayout => _$this._channelLayout;
  set channelLayout(String? channelLayout) =>
      _$this._channelLayout = channelLayout;

  ListBuilder<BookChapter?>? _chapters;
  ListBuilder<BookChapter?> get chapters =>
      _$this._chapters ??= new ListBuilder<BookChapter?>();
  set chapters(ListBuilder<BookChapter?>? chapters) =>
      _$this._chapters = chapters;

  String? _embeddedCoverArt;
  String? get embeddedCoverArt => _$this._embeddedCoverArt;
  set embeddedCoverArt(String? embeddedCoverArt) =>
      _$this._embeddedCoverArt = embeddedCoverArt;

  AudioMetaTagsBuilder? _metaTags;
  AudioMetaTagsBuilder get metaTags =>
      _$this._metaTags ??= new AudioMetaTagsBuilder();
  set metaTags(AudioMetaTagsBuilder? metaTags) => _$this._metaTags = metaTags;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  AudioFileBuilder() {
    AudioFile._defaults(this);
  }

  AudioFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _ino = $v.ino;
      _metadata = $v.metadata?.toBuilder();
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _trackNumFromMeta = $v.trackNumFromMeta;
      _discNumFromMeta = $v.discNumFromMeta;
      _trackNumFromFilename = $v.trackNumFromFilename;
      _discNumFromFilename = $v.discNumFromFilename;
      _manuallyVerified = $v.manuallyVerified;
      _invalid = $v.invalid;
      _exclude = $v.exclude;
      _error = $v.error;
      _format = $v.format;
      _duration = $v.duration;
      _bitRate = $v.bitRate;
      _language = $v.language;
      _codec = $v.codec;
      _timeBase = $v.timeBase;
      _channels = $v.channels;
      _channelLayout = $v.channelLayout;
      _chapters = $v.chapters?.toBuilder();
      _embeddedCoverArt = $v.embeddedCoverArt;
      _metaTags = $v.metaTags?.toBuilder();
      _mimeType = $v.mimeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudioFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AudioFile;
  }

  @override
  void update(void Function(AudioFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AudioFile build() => _build();

  _$AudioFile _build() {
    _$AudioFile _$result;
    try {
      _$result = _$v ??
          new _$AudioFile._(
              index: index,
              ino: ino,
              metadata: _metadata?.build(),
              addedAt: addedAt,
              updatedAt: updatedAt,
              trackNumFromMeta: trackNumFromMeta,
              discNumFromMeta: discNumFromMeta,
              trackNumFromFilename: trackNumFromFilename,
              discNumFromFilename: discNumFromFilename,
              manuallyVerified: manuallyVerified,
              invalid: invalid,
              exclude: exclude,
              error: error,
              format: format,
              duration: duration,
              bitRate: bitRate,
              language: language,
              codec: codec,
              timeBase: timeBase,
              channels: channels,
              channelLayout: channelLayout,
              chapters: _chapters?.build(),
              embeddedCoverArt: embeddedCoverArt,
              metaTags: _metaTags?.build(),
              mimeType: mimeType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'chapters';
        _chapters?.build();

        _$failedField = 'metaTags';
        _metaTags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AudioFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
