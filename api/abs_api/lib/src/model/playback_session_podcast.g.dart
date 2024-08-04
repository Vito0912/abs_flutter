// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_session_podcast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PlaybackSessionPodcastBuilder
    implements PlaybackSessionBaseBuilder {
  void replace(covariant PlaybackSessionPodcast other);
  void update(void Function(PlaybackSessionPodcastBuilder) updates);
  PodcastMetadataBuilder get mediaMetadata;
  set mediaMetadata(covariant PodcastMetadataBuilder? mediaMetadata);

  String? get episodeId;
  set episodeId(covariant String? episodeId);

  String? get id;
  set id(covariant String? id);

  String? get userId;
  set userId(covariant String? userId);

  String? get libraryId;
  set libraryId(covariant String? libraryId);

  String? get libraryItemId;
  set libraryItemId(covariant String? libraryItemId);

  MediaType? get mediaType;
  set mediaType(covariant MediaType? mediaType);

  String? get displayTitle;
  set displayTitle(covariant String? displayTitle);

  String? get displayAuthor;
  set displayAuthor(covariant String? displayAuthor);

  String? get coverPath;
  set coverPath(covariant String? coverPath);

  num? get duration;
  set duration(covariant num? duration);

  int? get playMethod;
  set playMethod(covariant int? playMethod);

  String? get mediaPlayer;
  set mediaPlayer(covariant String? mediaPlayer);

  DeviceInfoBuilder get deviceInfo;
  set deviceInfo(covariant DeviceInfoBuilder? deviceInfo);

  String? get serverVersion;
  set serverVersion(covariant String? serverVersion);

  String? get date;
  set date(covariant String? date);

  String? get dayOfWeek;
  set dayOfWeek(covariant String? dayOfWeek);

  num? get timeListening;
  set timeListening(covariant num? timeListening);

  num? get startTime;
  set startTime(covariant num? startTime);

  num? get currentTime;
  set currentTime(covariant num? currentTime);

  int? get createdAt;
  set createdAt(covariant int? createdAt);

  int? get updatedAt;
  set updatedAt(covariant int? updatedAt);
}

class _$$PlaybackSessionPodcast extends $PlaybackSessionPodcast {
  @override
  final PodcastMetadata? mediaMetadata;
  @override
  final String? episodeId;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? libraryId;
  @override
  final String? libraryItemId;
  @override
  final MediaType? mediaType;
  @override
  final String? displayTitle;
  @override
  final String? displayAuthor;
  @override
  final String? coverPath;
  @override
  final num? duration;
  @override
  final int? playMethod;
  @override
  final String? mediaPlayer;
  @override
  final DeviceInfo? deviceInfo;
  @override
  final String? serverVersion;
  @override
  final String? date;
  @override
  final String? dayOfWeek;
  @override
  final num? timeListening;
  @override
  final num? startTime;
  @override
  final num? currentTime;
  @override
  final int? createdAt;
  @override
  final int? updatedAt;

  factory _$$PlaybackSessionPodcast(
          [void Function($PlaybackSessionPodcastBuilder)? updates]) =>
      (new $PlaybackSessionPodcastBuilder()..update(updates))._build();

  _$$PlaybackSessionPodcast._(
      {this.mediaMetadata,
      this.episodeId,
      this.id,
      this.userId,
      this.libraryId,
      this.libraryItemId,
      this.mediaType,
      this.displayTitle,
      this.displayAuthor,
      this.coverPath,
      this.duration,
      this.playMethod,
      this.mediaPlayer,
      this.deviceInfo,
      this.serverVersion,
      this.date,
      this.dayOfWeek,
      this.timeListening,
      this.startTime,
      this.currentTime,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  $PlaybackSessionPodcast rebuild(
          void Function($PlaybackSessionPodcastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PlaybackSessionPodcastBuilder toBuilder() =>
      new $PlaybackSessionPodcastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PlaybackSessionPodcast &&
        mediaMetadata == other.mediaMetadata &&
        episodeId == other.episodeId &&
        id == other.id &&
        userId == other.userId &&
        libraryId == other.libraryId &&
        libraryItemId == other.libraryItemId &&
        mediaType == other.mediaType &&
        displayTitle == other.displayTitle &&
        displayAuthor == other.displayAuthor &&
        coverPath == other.coverPath &&
        duration == other.duration &&
        playMethod == other.playMethod &&
        mediaPlayer == other.mediaPlayer &&
        deviceInfo == other.deviceInfo &&
        serverVersion == other.serverVersion &&
        date == other.date &&
        dayOfWeek == other.dayOfWeek &&
        timeListening == other.timeListening &&
        startTime == other.startTime &&
        currentTime == other.currentTime &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaMetadata.hashCode);
    _$hash = $jc(_$hash, episodeId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, displayTitle.hashCode);
    _$hash = $jc(_$hash, displayAuthor.hashCode);
    _$hash = $jc(_$hash, coverPath.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, playMethod.hashCode);
    _$hash = $jc(_$hash, mediaPlayer.hashCode);
    _$hash = $jc(_$hash, deviceInfo.hashCode);
    _$hash = $jc(_$hash, serverVersion.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, timeListening.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, currentTime.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$PlaybackSessionPodcast')
          ..add('mediaMetadata', mediaMetadata)
          ..add('episodeId', episodeId)
          ..add('id', id)
          ..add('userId', userId)
          ..add('libraryId', libraryId)
          ..add('libraryItemId', libraryItemId)
          ..add('mediaType', mediaType)
          ..add('displayTitle', displayTitle)
          ..add('displayAuthor', displayAuthor)
          ..add('coverPath', coverPath)
          ..add('duration', duration)
          ..add('playMethod', playMethod)
          ..add('mediaPlayer', mediaPlayer)
          ..add('deviceInfo', deviceInfo)
          ..add('serverVersion', serverVersion)
          ..add('date', date)
          ..add('dayOfWeek', dayOfWeek)
          ..add('timeListening', timeListening)
          ..add('startTime', startTime)
          ..add('currentTime', currentTime)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class $PlaybackSessionPodcastBuilder
    implements
        Builder<$PlaybackSessionPodcast, $PlaybackSessionPodcastBuilder>,
        PlaybackSessionPodcastBuilder {
  _$$PlaybackSessionPodcast? _$v;

  PodcastMetadataBuilder? _mediaMetadata;
  PodcastMetadataBuilder get mediaMetadata =>
      _$this._mediaMetadata ??= new PodcastMetadataBuilder();
  set mediaMetadata(covariant PodcastMetadataBuilder? mediaMetadata) =>
      _$this._mediaMetadata = mediaMetadata;

  String? _episodeId;
  String? get episodeId => _$this._episodeId;
  set episodeId(covariant String? episodeId) => _$this._episodeId = episodeId;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(covariant String? userId) => _$this._userId = userId;

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(covariant String? libraryId) => _$this._libraryId = libraryId;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(covariant String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  MediaType? _mediaType;
  MediaType? get mediaType => _$this._mediaType;
  set mediaType(covariant MediaType? mediaType) =>
      _$this._mediaType = mediaType;

  String? _displayTitle;
  String? get displayTitle => _$this._displayTitle;
  set displayTitle(covariant String? displayTitle) =>
      _$this._displayTitle = displayTitle;

  String? _displayAuthor;
  String? get displayAuthor => _$this._displayAuthor;
  set displayAuthor(covariant String? displayAuthor) =>
      _$this._displayAuthor = displayAuthor;

  String? _coverPath;
  String? get coverPath => _$this._coverPath;
  set coverPath(covariant String? coverPath) => _$this._coverPath = coverPath;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(covariant num? duration) => _$this._duration = duration;

  int? _playMethod;
  int? get playMethod => _$this._playMethod;
  set playMethod(covariant int? playMethod) => _$this._playMethod = playMethod;

  String? _mediaPlayer;
  String? get mediaPlayer => _$this._mediaPlayer;
  set mediaPlayer(covariant String? mediaPlayer) =>
      _$this._mediaPlayer = mediaPlayer;

  DeviceInfoBuilder? _deviceInfo;
  DeviceInfoBuilder get deviceInfo =>
      _$this._deviceInfo ??= new DeviceInfoBuilder();
  set deviceInfo(covariant DeviceInfoBuilder? deviceInfo) =>
      _$this._deviceInfo = deviceInfo;

  String? _serverVersion;
  String? get serverVersion => _$this._serverVersion;
  set serverVersion(covariant String? serverVersion) =>
      _$this._serverVersion = serverVersion;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  String? _dayOfWeek;
  String? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(covariant String? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  num? _timeListening;
  num? get timeListening => _$this._timeListening;
  set timeListening(covariant num? timeListening) =>
      _$this._timeListening = timeListening;

  num? _startTime;
  num? get startTime => _$this._startTime;
  set startTime(covariant num? startTime) => _$this._startTime = startTime;

  num? _currentTime;
  num? get currentTime => _$this._currentTime;
  set currentTime(covariant num? currentTime) =>
      _$this._currentTime = currentTime;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(covariant int? createdAt) => _$this._createdAt = createdAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant int? updatedAt) => _$this._updatedAt = updatedAt;

  $PlaybackSessionPodcastBuilder() {
    $PlaybackSessionPodcast._defaults(this);
  }

  $PlaybackSessionPodcastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaMetadata = $v.mediaMetadata?.toBuilder();
      _episodeId = $v.episodeId;
      _id = $v.id;
      _userId = $v.userId;
      _libraryId = $v.libraryId;
      _libraryItemId = $v.libraryItemId;
      _mediaType = $v.mediaType;
      _displayTitle = $v.displayTitle;
      _displayAuthor = $v.displayAuthor;
      _coverPath = $v.coverPath;
      _duration = $v.duration;
      _playMethod = $v.playMethod;
      _mediaPlayer = $v.mediaPlayer;
      _deviceInfo = $v.deviceInfo?.toBuilder();
      _serverVersion = $v.serverVersion;
      _date = $v.date;
      _dayOfWeek = $v.dayOfWeek;
      _timeListening = $v.timeListening;
      _startTime = $v.startTime;
      _currentTime = $v.currentTime;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $PlaybackSessionPodcast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$PlaybackSessionPodcast;
  }

  @override
  void update(void Function($PlaybackSessionPodcastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PlaybackSessionPodcast build() => _build();

  _$$PlaybackSessionPodcast _build() {
    _$$PlaybackSessionPodcast _$result;
    try {
      _$result = _$v ??
          new _$$PlaybackSessionPodcast._(
              mediaMetadata: _mediaMetadata?.build(),
              episodeId: episodeId,
              id: id,
              userId: userId,
              libraryId: libraryId,
              libraryItemId: libraryItemId,
              mediaType: mediaType,
              displayTitle: displayTitle,
              displayAuthor: displayAuthor,
              coverPath: coverPath,
              duration: duration,
              playMethod: playMethod,
              mediaPlayer: mediaPlayer,
              deviceInfo: _deviceInfo?.build(),
              serverVersion: serverVersion,
              date: date,
              dayOfWeek: dayOfWeek,
              timeListening: timeListening,
              startTime: startTime,
              currentTime: currentTime,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaMetadata';
        _mediaMetadata?.build();

        _$failedField = 'deviceInfo';
        _deviceInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$PlaybackSessionPodcast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
