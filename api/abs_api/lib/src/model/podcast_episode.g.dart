// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_episode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PodcastEpisode extends PodcastEpisode {
  @override
  final String? libraryItemId;
  @override
  final String? podcastId;
  @override
  final String? id;
  @override
  final String? oldEpisodeId;
  @override
  final int? index;
  @override
  final String? season;
  @override
  final String? episode;
  @override
  final String? episodeType;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? description;
  @override
  final BuiltMap<String, JsonObject?>? enclosure;
  @override
  final String? guid;
  @override
  final String? pubDate;
  @override
  final BuiltList<JsonObject>? chapters;
  @override
  final AudioFile? audioFile;
  @override
  final int? publishedAt;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;
  @override
  final AudioTrack? audioTrack;
  @override
  final num? duration;
  @override
  final int? size;

  factory _$PodcastEpisode([void Function(PodcastEpisodeBuilder)? updates]) =>
      (new PodcastEpisodeBuilder()..update(updates))._build();

  _$PodcastEpisode._(
      {this.libraryItemId,
      this.podcastId,
      this.id,
      this.oldEpisodeId,
      this.index,
      this.season,
      this.episode,
      this.episodeType,
      this.title,
      this.subtitle,
      this.description,
      this.enclosure,
      this.guid,
      this.pubDate,
      this.chapters,
      this.audioFile,
      this.publishedAt,
      this.addedAt,
      this.updatedAt,
      this.audioTrack,
      this.duration,
      this.size})
      : super._();

  @override
  PodcastEpisode rebuild(void Function(PodcastEpisodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastEpisodeBuilder toBuilder() =>
      new PodcastEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastEpisode &&
        libraryItemId == other.libraryItemId &&
        podcastId == other.podcastId &&
        id == other.id &&
        oldEpisodeId == other.oldEpisodeId &&
        index == other.index &&
        season == other.season &&
        episode == other.episode &&
        episodeType == other.episodeType &&
        title == other.title &&
        subtitle == other.subtitle &&
        description == other.description &&
        enclosure == other.enclosure &&
        guid == other.guid &&
        pubDate == other.pubDate &&
        chapters == other.chapters &&
        audioFile == other.audioFile &&
        publishedAt == other.publishedAt &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        audioTrack == other.audioTrack &&
        duration == other.duration &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, podcastId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, oldEpisodeId.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jc(_$hash, episodeType.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, enclosure.hashCode);
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, pubDate.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, audioFile.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, audioTrack.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PodcastEpisode')
          ..add('libraryItemId', libraryItemId)
          ..add('podcastId', podcastId)
          ..add('id', id)
          ..add('oldEpisodeId', oldEpisodeId)
          ..add('index', index)
          ..add('season', season)
          ..add('episode', episode)
          ..add('episodeType', episodeType)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('description', description)
          ..add('enclosure', enclosure)
          ..add('guid', guid)
          ..add('pubDate', pubDate)
          ..add('chapters', chapters)
          ..add('audioFile', audioFile)
          ..add('publishedAt', publishedAt)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('audioTrack', audioTrack)
          ..add('duration', duration)
          ..add('size', size))
        .toString();
  }
}

class PodcastEpisodeBuilder
    implements Builder<PodcastEpisode, PodcastEpisodeBuilder> {
  _$PodcastEpisode? _$v;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  String? _podcastId;
  String? get podcastId => _$this._podcastId;
  set podcastId(String? podcastId) => _$this._podcastId = podcastId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _oldEpisodeId;
  String? get oldEpisodeId => _$this._oldEpisodeId;
  set oldEpisodeId(String? oldEpisodeId) => _$this._oldEpisodeId = oldEpisodeId;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _season;
  String? get season => _$this._season;
  set season(String? season) => _$this._season = season;

  String? _episode;
  String? get episode => _$this._episode;
  set episode(String? episode) => _$this._episode = episode;

  String? _episodeType;
  String? get episodeType => _$this._episodeType;
  set episodeType(String? episodeType) => _$this._episodeType = episodeType;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MapBuilder<String, JsonObject?>? _enclosure;
  MapBuilder<String, JsonObject?> get enclosure =>
      _$this._enclosure ??= new MapBuilder<String, JsonObject?>();
  set enclosure(MapBuilder<String, JsonObject?>? enclosure) =>
      _$this._enclosure = enclosure;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _pubDate;
  String? get pubDate => _$this._pubDate;
  set pubDate(String? pubDate) => _$this._pubDate = pubDate;

  ListBuilder<JsonObject>? _chapters;
  ListBuilder<JsonObject> get chapters =>
      _$this._chapters ??= new ListBuilder<JsonObject>();
  set chapters(ListBuilder<JsonObject>? chapters) =>
      _$this._chapters = chapters;

  AudioFileBuilder? _audioFile;
  AudioFileBuilder get audioFile =>
      _$this._audioFile ??= new AudioFileBuilder();
  set audioFile(AudioFileBuilder? audioFile) => _$this._audioFile = audioFile;

  int? _publishedAt;
  int? get publishedAt => _$this._publishedAt;
  set publishedAt(int? publishedAt) => _$this._publishedAt = publishedAt;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  AudioTrackBuilder? _audioTrack;
  AudioTrackBuilder get audioTrack =>
      _$this._audioTrack ??= new AudioTrackBuilder();
  set audioTrack(AudioTrackBuilder? audioTrack) =>
      _$this._audioTrack = audioTrack;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  PodcastEpisodeBuilder() {
    PodcastEpisode._defaults(this);
  }

  PodcastEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryItemId = $v.libraryItemId;
      _podcastId = $v.podcastId;
      _id = $v.id;
      _oldEpisodeId = $v.oldEpisodeId;
      _index = $v.index;
      _season = $v.season;
      _episode = $v.episode;
      _episodeType = $v.episodeType;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _description = $v.description;
      _enclosure = $v.enclosure?.toBuilder();
      _guid = $v.guid;
      _pubDate = $v.pubDate;
      _chapters = $v.chapters?.toBuilder();
      _audioFile = $v.audioFile?.toBuilder();
      _publishedAt = $v.publishedAt;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _audioTrack = $v.audioTrack?.toBuilder();
      _duration = $v.duration;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PodcastEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastEpisode;
  }

  @override
  void update(void Function(PodcastEpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastEpisode build() => _build();

  _$PodcastEpisode _build() {
    _$PodcastEpisode _$result;
    try {
      _$result = _$v ??
          new _$PodcastEpisode._(
              libraryItemId: libraryItemId,
              podcastId: podcastId,
              id: id,
              oldEpisodeId: oldEpisodeId,
              index: index,
              season: season,
              episode: episode,
              episodeType: episodeType,
              title: title,
              subtitle: subtitle,
              description: description,
              enclosure: _enclosure?.build(),
              guid: guid,
              pubDate: pubDate,
              chapters: _chapters?.build(),
              audioFile: _audioFile?.build(),
              publishedAt: publishedAt,
              addedAt: addedAt,
              updatedAt: updatedAt,
              audioTrack: _audioTrack?.build(),
              duration: duration,
              size: size);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enclosure';
        _enclosure?.build();

        _$failedField = 'chapters';
        _chapters?.build();
        _$failedField = 'audioFile';
        _audioFile?.build();

        _$failedField = 'audioTrack';
        _audioTrack?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PodcastEpisode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
