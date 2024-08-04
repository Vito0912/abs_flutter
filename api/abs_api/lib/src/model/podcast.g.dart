// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Podcast extends Podcast {
  @override
  final String? id;
  @override
  final String? libraryItemId;
  @override
  final PodcastMetadata? metadata;
  @override
  final String? coverPath;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<PodcastEpisode>? episodes;
  @override
  final bool? autoDownloadEpisodes;
  @override
  final String? autoDownloadSchedule;
  @override
  final int? lastEpisodeCheck;
  @override
  final int? maxEpisodesToKeep;
  @override
  final int? maxNewEpisodesToDownload;
  @override
  final int? lastCoverSearch;
  @override
  final String? lastCoverSearchQuery;
  @override
  final int? size;
  @override
  final int? duration;
  @override
  final int? numTracks;
  @override
  final int? latestEpisodePublished;

  factory _$Podcast([void Function(PodcastBuilder)? updates]) =>
      (new PodcastBuilder()..update(updates))._build();

  _$Podcast._(
      {this.id,
      this.libraryItemId,
      this.metadata,
      this.coverPath,
      this.tags,
      this.episodes,
      this.autoDownloadEpisodes,
      this.autoDownloadSchedule,
      this.lastEpisodeCheck,
      this.maxEpisodesToKeep,
      this.maxNewEpisodesToDownload,
      this.lastCoverSearch,
      this.lastCoverSearchQuery,
      this.size,
      this.duration,
      this.numTracks,
      this.latestEpisodePublished})
      : super._();

  @override
  Podcast rebuild(void Function(PodcastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastBuilder toBuilder() => new PodcastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Podcast &&
        id == other.id &&
        libraryItemId == other.libraryItemId &&
        metadata == other.metadata &&
        coverPath == other.coverPath &&
        tags == other.tags &&
        episodes == other.episodes &&
        autoDownloadEpisodes == other.autoDownloadEpisodes &&
        autoDownloadSchedule == other.autoDownloadSchedule &&
        lastEpisodeCheck == other.lastEpisodeCheck &&
        maxEpisodesToKeep == other.maxEpisodesToKeep &&
        maxNewEpisodesToDownload == other.maxNewEpisodesToDownload &&
        lastCoverSearch == other.lastCoverSearch &&
        lastCoverSearchQuery == other.lastCoverSearchQuery &&
        size == other.size &&
        duration == other.duration &&
        numTracks == other.numTracks &&
        latestEpisodePublished == other.latestEpisodePublished;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, coverPath.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, autoDownloadEpisodes.hashCode);
    _$hash = $jc(_$hash, autoDownloadSchedule.hashCode);
    _$hash = $jc(_$hash, lastEpisodeCheck.hashCode);
    _$hash = $jc(_$hash, maxEpisodesToKeep.hashCode);
    _$hash = $jc(_$hash, maxNewEpisodesToDownload.hashCode);
    _$hash = $jc(_$hash, lastCoverSearch.hashCode);
    _$hash = $jc(_$hash, lastCoverSearchQuery.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, numTracks.hashCode);
    _$hash = $jc(_$hash, latestEpisodePublished.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Podcast')
          ..add('id', id)
          ..add('libraryItemId', libraryItemId)
          ..add('metadata', metadata)
          ..add('coverPath', coverPath)
          ..add('tags', tags)
          ..add('episodes', episodes)
          ..add('autoDownloadEpisodes', autoDownloadEpisodes)
          ..add('autoDownloadSchedule', autoDownloadSchedule)
          ..add('lastEpisodeCheck', lastEpisodeCheck)
          ..add('maxEpisodesToKeep', maxEpisodesToKeep)
          ..add('maxNewEpisodesToDownload', maxNewEpisodesToDownload)
          ..add('lastCoverSearch', lastCoverSearch)
          ..add('lastCoverSearchQuery', lastCoverSearchQuery)
          ..add('size', size)
          ..add('duration', duration)
          ..add('numTracks', numTracks)
          ..add('latestEpisodePublished', latestEpisodePublished))
        .toString();
  }
}

class PodcastBuilder implements Builder<Podcast, PodcastBuilder> {
  _$Podcast? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  PodcastMetadataBuilder? _metadata;
  PodcastMetadataBuilder get metadata =>
      _$this._metadata ??= new PodcastMetadataBuilder();
  set metadata(PodcastMetadataBuilder? metadata) => _$this._metadata = metadata;

  String? _coverPath;
  String? get coverPath => _$this._coverPath;
  set coverPath(String? coverPath) => _$this._coverPath = coverPath;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<PodcastEpisode>? _episodes;
  ListBuilder<PodcastEpisode> get episodes =>
      _$this._episodes ??= new ListBuilder<PodcastEpisode>();
  set episodes(ListBuilder<PodcastEpisode>? episodes) =>
      _$this._episodes = episodes;

  bool? _autoDownloadEpisodes;
  bool? get autoDownloadEpisodes => _$this._autoDownloadEpisodes;
  set autoDownloadEpisodes(bool? autoDownloadEpisodes) =>
      _$this._autoDownloadEpisodes = autoDownloadEpisodes;

  String? _autoDownloadSchedule;
  String? get autoDownloadSchedule => _$this._autoDownloadSchedule;
  set autoDownloadSchedule(String? autoDownloadSchedule) =>
      _$this._autoDownloadSchedule = autoDownloadSchedule;

  int? _lastEpisodeCheck;
  int? get lastEpisodeCheck => _$this._lastEpisodeCheck;
  set lastEpisodeCheck(int? lastEpisodeCheck) =>
      _$this._lastEpisodeCheck = lastEpisodeCheck;

  int? _maxEpisodesToKeep;
  int? get maxEpisodesToKeep => _$this._maxEpisodesToKeep;
  set maxEpisodesToKeep(int? maxEpisodesToKeep) =>
      _$this._maxEpisodesToKeep = maxEpisodesToKeep;

  int? _maxNewEpisodesToDownload;
  int? get maxNewEpisodesToDownload => _$this._maxNewEpisodesToDownload;
  set maxNewEpisodesToDownload(int? maxNewEpisodesToDownload) =>
      _$this._maxNewEpisodesToDownload = maxNewEpisodesToDownload;

  int? _lastCoverSearch;
  int? get lastCoverSearch => _$this._lastCoverSearch;
  set lastCoverSearch(int? lastCoverSearch) =>
      _$this._lastCoverSearch = lastCoverSearch;

  String? _lastCoverSearchQuery;
  String? get lastCoverSearchQuery => _$this._lastCoverSearchQuery;
  set lastCoverSearchQuery(String? lastCoverSearchQuery) =>
      _$this._lastCoverSearchQuery = lastCoverSearchQuery;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  int? _numTracks;
  int? get numTracks => _$this._numTracks;
  set numTracks(int? numTracks) => _$this._numTracks = numTracks;

  int? _latestEpisodePublished;
  int? get latestEpisodePublished => _$this._latestEpisodePublished;
  set latestEpisodePublished(int? latestEpisodePublished) =>
      _$this._latestEpisodePublished = latestEpisodePublished;

  PodcastBuilder() {
    Podcast._defaults(this);
  }

  PodcastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _libraryItemId = $v.libraryItemId;
      _metadata = $v.metadata?.toBuilder();
      _coverPath = $v.coverPath;
      _tags = $v.tags?.toBuilder();
      _episodes = $v.episodes?.toBuilder();
      _autoDownloadEpisodes = $v.autoDownloadEpisodes;
      _autoDownloadSchedule = $v.autoDownloadSchedule;
      _lastEpisodeCheck = $v.lastEpisodeCheck;
      _maxEpisodesToKeep = $v.maxEpisodesToKeep;
      _maxNewEpisodesToDownload = $v.maxNewEpisodesToDownload;
      _lastCoverSearch = $v.lastCoverSearch;
      _lastCoverSearchQuery = $v.lastCoverSearchQuery;
      _size = $v.size;
      _duration = $v.duration;
      _numTracks = $v.numTracks;
      _latestEpisodePublished = $v.latestEpisodePublished;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Podcast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Podcast;
  }

  @override
  void update(void Function(PodcastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Podcast build() => _build();

  _$Podcast _build() {
    _$Podcast _$result;
    try {
      _$result = _$v ??
          new _$Podcast._(
              id: id,
              libraryItemId: libraryItemId,
              metadata: _metadata?.build(),
              coverPath: coverPath,
              tags: _tags?.build(),
              episodes: _episodes?.build(),
              autoDownloadEpisodes: autoDownloadEpisodes,
              autoDownloadSchedule: autoDownloadSchedule,
              lastEpisodeCheck: lastEpisodeCheck,
              maxEpisodesToKeep: maxEpisodesToKeep,
              maxNewEpisodesToDownload: maxNewEpisodesToDownload,
              lastCoverSearch: lastCoverSearch,
              lastCoverSearchQuery: lastCoverSearchQuery,
              size: size,
              duration: duration,
              numTracks: numTracks,
              latestEpisodePublished: latestEpisodePublished);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'episodes';
        _episodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Podcast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
