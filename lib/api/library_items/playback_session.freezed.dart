// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaybackSession _$PlaybackSessionFromJson(Map<String, dynamic> json) {
  return _PlaybackSession.fromJson(json);
}

/// @nodoc
mixin _$PlaybackSession {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryId")
  String get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemId")
  String get libraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "episodeId")
  String? get episodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaType")
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaMetadata")
  Metadata? get mediaMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: "displayTitle")
  String? get displayTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "displayAuthor")
  String? get displayAuthor => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPath")
  String? get coverPath => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  double? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "playMethod")
  int? get playMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaPlayer")
  String? get mediaPlayer => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceInfo")
  DeviceInfo? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "serverVersion")
  String? get serverVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "dayOfWeek")
  String? get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: "timeListening")
  double? get timeListening => throw _privateConstructorUsedError;
  @JsonKey(name: "startTime")
  double? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "currentTime")
  double? get currentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "startedAt")
  int? get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "audioTracks")
  List<AudioTrack>? get audioTracks => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem => throw _privateConstructorUsedError;

  /// Serializes this PlaybackSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaybackSessionCopyWith<PlaybackSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackSessionCopyWith<$Res> {
  factory $PlaybackSessionCopyWith(
          PlaybackSession value, $Res Function(PlaybackSession) then) =
      _$PlaybackSessionCopyWithImpl<$Res, PlaybackSession>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "libraryId") String libraryId,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "mediaType") String? mediaType,
      @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "displayTitle") String? displayTitle,
      @JsonKey(name: "displayAuthor") String? displayAuthor,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "playMethod") int? playMethod,
      @JsonKey(name: "mediaPlayer") String? mediaPlayer,
      @JsonKey(name: "deviceInfo") DeviceInfo? deviceInfo,
      @JsonKey(name: "serverVersion") String? serverVersion,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "dayOfWeek") String? dayOfWeek,
      @JsonKey(name: "timeListening") double? timeListening,
      @JsonKey(name: "startTime") double? startTime,
      @JsonKey(name: "currentTime") double? currentTime,
      @JsonKey(name: "startedAt") int? startedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "audioTracks") List<AudioTrack>? audioTracks,
      @JsonKey(name: "libraryItem") LibraryItem? libraryItem});

  $MetadataCopyWith<$Res>? get mediaMetadata;
  $DeviceInfoCopyWith<$Res>? get deviceInfo;
  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class _$PlaybackSessionCopyWithImpl<$Res, $Val extends PlaybackSession>
    implements $PlaybackSessionCopyWith<$Res> {
  _$PlaybackSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? libraryId = null,
    Object? libraryItemId = null,
    Object? episodeId = freezed,
    Object? mediaType = freezed,
    Object? mediaMetadata = freezed,
    Object? chapters = freezed,
    Object? displayTitle = freezed,
    Object? displayAuthor = freezed,
    Object? coverPath = freezed,
    Object? duration = freezed,
    Object? playMethod = freezed,
    Object? mediaPlayer = freezed,
    Object? deviceInfo = freezed,
    Object? serverVersion = freezed,
    Object? date = freezed,
    Object? dayOfWeek = freezed,
    Object? timeListening = freezed,
    Object? startTime = freezed,
    Object? currentTime = freezed,
    Object? startedAt = freezed,
    Object? updatedAt = freezed,
    Object? audioTracks = freezed,
    Object? libraryItem = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      displayTitle: freezed == displayTitle
          ? _value.displayTitle
          : displayTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      displayAuthor: freezed == displayAuthor
          ? _value.displayAuthor
          : displayAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      playMethod: freezed == playMethod
          ? _value.playMethod
          : playMethod // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaPlayer: freezed == mediaPlayer
          ? _value.mediaPlayer
          : mediaPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo?,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      timeListening: freezed == timeListening
          ? _value.timeListening
          : timeListening // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double?,
      currentTime: freezed == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      audioTracks: freezed == audioTracks
          ? _value.audioTracks
          : audioTracks // ignore: cast_nullable_to_non_nullable
              as List<AudioTrack>?,
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
    ) as $Val);
  }

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get mediaMetadata {
    if (_value.mediaMetadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.mediaMetadata!, (value) {
      return _then(_value.copyWith(mediaMetadata: value) as $Val);
    });
  }

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res>? get deviceInfo {
    if (_value.deviceInfo == null) {
      return null;
    }

    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo!, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryItemCopyWith<$Res>? get libraryItem {
    if (_value.libraryItem == null) {
      return null;
    }

    return $LibraryItemCopyWith<$Res>(_value.libraryItem!, (value) {
      return _then(_value.copyWith(libraryItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaybackSessionImplCopyWith<$Res>
    implements $PlaybackSessionCopyWith<$Res> {
  factory _$$PlaybackSessionImplCopyWith(_$PlaybackSessionImpl value,
          $Res Function(_$PlaybackSessionImpl) then) =
      __$$PlaybackSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "libraryId") String libraryId,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "mediaType") String? mediaType,
      @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata,
      @JsonKey(name: "chapters") List<Chapter>? chapters,
      @JsonKey(name: "displayTitle") String? displayTitle,
      @JsonKey(name: "displayAuthor") String? displayAuthor,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "duration") double? duration,
      @JsonKey(name: "playMethod") int? playMethod,
      @JsonKey(name: "mediaPlayer") String? mediaPlayer,
      @JsonKey(name: "deviceInfo") DeviceInfo? deviceInfo,
      @JsonKey(name: "serverVersion") String? serverVersion,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "dayOfWeek") String? dayOfWeek,
      @JsonKey(name: "timeListening") double? timeListening,
      @JsonKey(name: "startTime") double? startTime,
      @JsonKey(name: "currentTime") double? currentTime,
      @JsonKey(name: "startedAt") int? startedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "audioTracks") List<AudioTrack>? audioTracks,
      @JsonKey(name: "libraryItem") LibraryItem? libraryItem});

  @override
  $MetadataCopyWith<$Res>? get mediaMetadata;
  @override
  $DeviceInfoCopyWith<$Res>? get deviceInfo;
  @override
  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class __$$PlaybackSessionImplCopyWithImpl<$Res>
    extends _$PlaybackSessionCopyWithImpl<$Res, _$PlaybackSessionImpl>
    implements _$$PlaybackSessionImplCopyWith<$Res> {
  __$$PlaybackSessionImplCopyWithImpl(
      _$PlaybackSessionImpl _value, $Res Function(_$PlaybackSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? libraryId = null,
    Object? libraryItemId = null,
    Object? episodeId = freezed,
    Object? mediaType = freezed,
    Object? mediaMetadata = freezed,
    Object? chapters = freezed,
    Object? displayTitle = freezed,
    Object? displayAuthor = freezed,
    Object? coverPath = freezed,
    Object? duration = freezed,
    Object? playMethod = freezed,
    Object? mediaPlayer = freezed,
    Object? deviceInfo = freezed,
    Object? serverVersion = freezed,
    Object? date = freezed,
    Object? dayOfWeek = freezed,
    Object? timeListening = freezed,
    Object? startTime = freezed,
    Object? currentTime = freezed,
    Object? startedAt = freezed,
    Object? updatedAt = freezed,
    Object? audioTracks = freezed,
    Object? libraryItem = freezed,
  }) {
    return _then(_$PlaybackSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
      displayTitle: freezed == displayTitle
          ? _value.displayTitle
          : displayTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      displayAuthor: freezed == displayAuthor
          ? _value.displayAuthor
          : displayAuthor // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      playMethod: freezed == playMethod
          ? _value.playMethod
          : playMethod // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaPlayer: freezed == mediaPlayer
          ? _value.mediaPlayer
          : mediaPlayer // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo?,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      timeListening: freezed == timeListening
          ? _value.timeListening
          : timeListening // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double?,
      currentTime: freezed == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      audioTracks: freezed == audioTracks
          ? _value._audioTracks
          : audioTracks // ignore: cast_nullable_to_non_nullable
              as List<AudioTrack>?,
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackSessionImpl implements _PlaybackSession {
  const _$PlaybackSessionImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "libraryId") required this.libraryId,
      @JsonKey(name: "libraryItemId") required this.libraryItemId,
      @JsonKey(name: "episodeId") this.episodeId,
      @JsonKey(name: "mediaType") this.mediaType,
      @JsonKey(name: "mediaMetadata") this.mediaMetadata,
      @JsonKey(name: "chapters") final List<Chapter>? chapters,
      @JsonKey(name: "displayTitle") this.displayTitle,
      @JsonKey(name: "displayAuthor") this.displayAuthor,
      @JsonKey(name: "coverPath") this.coverPath,
      @JsonKey(name: "duration") this.duration,
      @JsonKey(name: "playMethod") this.playMethod,
      @JsonKey(name: "mediaPlayer") this.mediaPlayer,
      @JsonKey(name: "deviceInfo") this.deviceInfo,
      @JsonKey(name: "serverVersion") this.serverVersion,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "dayOfWeek") this.dayOfWeek,
      @JsonKey(name: "timeListening") this.timeListening,
      @JsonKey(name: "startTime") this.startTime,
      @JsonKey(name: "currentTime") this.currentTime,
      @JsonKey(name: "startedAt") this.startedAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "audioTracks") final List<AudioTrack>? audioTracks,
      @JsonKey(name: "libraryItem") this.libraryItem})
      : _chapters = chapters,
        _audioTracks = audioTracks;

  factory _$PlaybackSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackSessionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "libraryId")
  final String libraryId;
  @override
  @JsonKey(name: "libraryItemId")
  final String libraryItemId;
  @override
  @JsonKey(name: "episodeId")
  final String? episodeId;
  @override
  @JsonKey(name: "mediaType")
  final String? mediaType;
  @override
  @JsonKey(name: "mediaMetadata")
  final Metadata? mediaMetadata;
  final List<Chapter>? _chapters;
  @override
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "displayTitle")
  final String? displayTitle;
  @override
  @JsonKey(name: "displayAuthor")
  final String? displayAuthor;
  @override
  @JsonKey(name: "coverPath")
  final String? coverPath;
  @override
  @JsonKey(name: "duration")
  final double? duration;
  @override
  @JsonKey(name: "playMethod")
  final int? playMethod;
  @override
  @JsonKey(name: "mediaPlayer")
  final String? mediaPlayer;
  @override
  @JsonKey(name: "deviceInfo")
  final DeviceInfo? deviceInfo;
  @override
  @JsonKey(name: "serverVersion")
  final String? serverVersion;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "dayOfWeek")
  final String? dayOfWeek;
  @override
  @JsonKey(name: "timeListening")
  final double? timeListening;
  @override
  @JsonKey(name: "startTime")
  final double? startTime;
  @override
  @JsonKey(name: "currentTime")
  final double? currentTime;
  @override
  @JsonKey(name: "startedAt")
  final int? startedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;
  final List<AudioTrack>? _audioTracks;
  @override
  @JsonKey(name: "audioTracks")
  List<AudioTrack>? get audioTracks {
    final value = _audioTracks;
    if (value == null) return null;
    if (_audioTracks is EqualUnmodifiableListView) return _audioTracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "libraryItem")
  final LibraryItem? libraryItem;

  @override
  String toString() {
    return 'PlaybackSession(id: $id, userId: $userId, libraryId: $libraryId, libraryItemId: $libraryItemId, episodeId: $episodeId, mediaType: $mediaType, mediaMetadata: $mediaMetadata, chapters: $chapters, displayTitle: $displayTitle, displayAuthor: $displayAuthor, coverPath: $coverPath, duration: $duration, playMethod: $playMethod, mediaPlayer: $mediaPlayer, deviceInfo: $deviceInfo, serverVersion: $serverVersion, date: $date, dayOfWeek: $dayOfWeek, timeListening: $timeListening, startTime: $startTime, currentTime: $currentTime, startedAt: $startedAt, updatedAt: $updatedAt, audioTracks: $audioTracks, libraryItem: $libraryItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.libraryItemId, libraryItemId) ||
                other.libraryItemId == libraryItemId) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.mediaMetadata, mediaMetadata) ||
                other.mediaMetadata == mediaMetadata) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters) &&
            (identical(other.displayTitle, displayTitle) ||
                other.displayTitle == displayTitle) &&
            (identical(other.displayAuthor, displayAuthor) ||
                other.displayAuthor == displayAuthor) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playMethod, playMethod) ||
                other.playMethod == playMethod) &&
            (identical(other.mediaPlayer, mediaPlayer) ||
                other.mediaPlayer == mediaPlayer) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.serverVersion, serverVersion) ||
                other.serverVersion == serverVersion) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.timeListening, timeListening) ||
                other.timeListening == timeListening) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._audioTracks, _audioTracks) &&
            (identical(other.libraryItem, libraryItem) ||
                other.libraryItem == libraryItem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        libraryId,
        libraryItemId,
        episodeId,
        mediaType,
        mediaMetadata,
        const DeepCollectionEquality().hash(_chapters),
        displayTitle,
        displayAuthor,
        coverPath,
        duration,
        playMethod,
        mediaPlayer,
        deviceInfo,
        serverVersion,
        date,
        dayOfWeek,
        timeListening,
        startTime,
        currentTime,
        startedAt,
        updatedAt,
        const DeepCollectionEquality().hash(_audioTracks),
        libraryItem
      ]);

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackSessionImplCopyWith<_$PlaybackSessionImpl> get copyWith =>
      __$$PlaybackSessionImplCopyWithImpl<_$PlaybackSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackSessionImplToJson(
      this,
    );
  }
}

abstract class _PlaybackSession implements PlaybackSession {
  const factory _PlaybackSession(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "libraryId") required final String libraryId,
          @JsonKey(name: "libraryItemId") required final String libraryItemId,
          @JsonKey(name: "episodeId") final String? episodeId,
          @JsonKey(name: "mediaType") final String? mediaType,
          @JsonKey(name: "mediaMetadata") final Metadata? mediaMetadata,
          @JsonKey(name: "chapters") final List<Chapter>? chapters,
          @JsonKey(name: "displayTitle") final String? displayTitle,
          @JsonKey(name: "displayAuthor") final String? displayAuthor,
          @JsonKey(name: "coverPath") final String? coverPath,
          @JsonKey(name: "duration") final double? duration,
          @JsonKey(name: "playMethod") final int? playMethod,
          @JsonKey(name: "mediaPlayer") final String? mediaPlayer,
          @JsonKey(name: "deviceInfo") final DeviceInfo? deviceInfo,
          @JsonKey(name: "serverVersion") final String? serverVersion,
          @JsonKey(name: "date") final String? date,
          @JsonKey(name: "dayOfWeek") final String? dayOfWeek,
          @JsonKey(name: "timeListening") final double? timeListening,
          @JsonKey(name: "startTime") final double? startTime,
          @JsonKey(name: "currentTime") final double? currentTime,
          @JsonKey(name: "startedAt") final int? startedAt,
          @JsonKey(name: "updatedAt") final int? updatedAt,
          @JsonKey(name: "audioTracks") final List<AudioTrack>? audioTracks,
          @JsonKey(name: "libraryItem") final LibraryItem? libraryItem}) =
      _$PlaybackSessionImpl;

  factory _PlaybackSession.fromJson(Map<String, dynamic> json) =
      _$PlaybackSessionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "libraryId")
  String get libraryId;
  @override
  @JsonKey(name: "libraryItemId")
  String get libraryItemId;
  @override
  @JsonKey(name: "episodeId")
  String? get episodeId;
  @override
  @JsonKey(name: "mediaType")
  String? get mediaType;
  @override
  @JsonKey(name: "mediaMetadata")
  Metadata? get mediaMetadata;
  @override
  @JsonKey(name: "chapters")
  List<Chapter>? get chapters;
  @override
  @JsonKey(name: "displayTitle")
  String? get displayTitle;
  @override
  @JsonKey(name: "displayAuthor")
  String? get displayAuthor;
  @override
  @JsonKey(name: "coverPath")
  String? get coverPath;
  @override
  @JsonKey(name: "duration")
  double? get duration;
  @override
  @JsonKey(name: "playMethod")
  int? get playMethod;
  @override
  @JsonKey(name: "mediaPlayer")
  String? get mediaPlayer;
  @override
  @JsonKey(name: "deviceInfo")
  DeviceInfo? get deviceInfo;
  @override
  @JsonKey(name: "serverVersion")
  String? get serverVersion;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "dayOfWeek")
  String? get dayOfWeek;
  @override
  @JsonKey(name: "timeListening")
  double? get timeListening;
  @override
  @JsonKey(name: "startTime")
  double? get startTime;
  @override
  @JsonKey(name: "currentTime")
  double? get currentTime;
  @override
  @JsonKey(name: "startedAt")
  int? get startedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;
  @override
  @JsonKey(name: "audioTracks")
  List<AudioTrack>? get audioTracks;
  @override
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem;

  /// Create a copy of PlaybackSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaybackSessionImplCopyWith<_$PlaybackSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
