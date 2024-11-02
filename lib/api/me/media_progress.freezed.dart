// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaProgress _$MediaProgressFromJson(Map<String, dynamic> json) {
  return _MediaProgress.fromJson(json);
}

/// @nodoc
mixin _$MediaProgress {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemId")
  String get libraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "episodeId")
  String? get episodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaItemId")
  String get mediaItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaItemType")
  @MediaItemTypeConverter()
  MediaItemType get mediaItemType => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  double get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "progress")
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(name: "currentTime")
  double get currentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "isFinished")
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: "hideFromContinueListening")
  bool get hideFromContinueListening => throw _privateConstructorUsedError;
  @JsonKey(name: "ebookLocation")
  String? get ebookLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "ebookProgress")
  double? get ebookProgress => throw _privateConstructorUsedError;
  @JsonKey(name: "lastUpdate")
  int? get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "startedAt")
  int get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "finishedAt")
  int? get finishedAt => throw _privateConstructorUsedError;

  /// Serializes this MediaProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaProgressCopyWith<MediaProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaProgressCopyWith<$Res> {
  factory $MediaProgressCopyWith(
          MediaProgress value, $Res Function(MediaProgress) then) =
      _$MediaProgressCopyWithImpl<$Res, MediaProgress>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "mediaItemId") String mediaItemId,
      @JsonKey(name: "mediaItemType")
      @MediaItemTypeConverter()
      MediaItemType mediaItemType,
      @JsonKey(name: "duration") double duration,
      @JsonKey(name: "progress") double progress,
      @JsonKey(name: "currentTime") double currentTime,
      @JsonKey(name: "isFinished") bool isFinished,
      @JsonKey(name: "hideFromContinueListening")
      bool hideFromContinueListening,
      @JsonKey(name: "ebookLocation") String? ebookLocation,
      @JsonKey(name: "ebookProgress") double? ebookProgress,
      @JsonKey(name: "lastUpdate") int? lastUpdate,
      @JsonKey(name: "startedAt") int startedAt,
      @JsonKey(name: "finishedAt") int? finishedAt});
}

/// @nodoc
class _$MediaProgressCopyWithImpl<$Res, $Val extends MediaProgress>
    implements $MediaProgressCopyWith<$Res> {
  _$MediaProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? libraryItemId = null,
    Object? episodeId = freezed,
    Object? mediaItemId = null,
    Object? mediaItemType = null,
    Object? duration = null,
    Object? progress = null,
    Object? currentTime = null,
    Object? isFinished = null,
    Object? hideFromContinueListening = null,
    Object? ebookLocation = freezed,
    Object? ebookProgress = freezed,
    Object? lastUpdate = freezed,
    Object? startedAt = null,
    Object? finishedAt = freezed,
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
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaItemId: null == mediaItemId
          ? _value.mediaItemId
          : mediaItemId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaItemType: null == mediaItemType
          ? _value.mediaItemType
          : mediaItemType // ignore: cast_nullable_to_non_nullable
              as MediaItemType,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFromContinueListening: null == hideFromContinueListening
          ? _value.hideFromContinueListening
          : hideFromContinueListening // ignore: cast_nullable_to_non_nullable
              as bool,
      ebookLocation: freezed == ebookLocation
          ? _value.ebookLocation
          : ebookLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      ebookProgress: freezed == ebookProgress
          ? _value.ebookProgress
          : ebookProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as int,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaProgressImplCopyWith<$Res>
    implements $MediaProgressCopyWith<$Res> {
  factory _$$MediaProgressImplCopyWith(
          _$MediaProgressImpl value, $Res Function(_$MediaProgressImpl) then) =
      __$$MediaProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "mediaItemId") String mediaItemId,
      @JsonKey(name: "mediaItemType")
      @MediaItemTypeConverter()
      MediaItemType mediaItemType,
      @JsonKey(name: "duration") double duration,
      @JsonKey(name: "progress") double progress,
      @JsonKey(name: "currentTime") double currentTime,
      @JsonKey(name: "isFinished") bool isFinished,
      @JsonKey(name: "hideFromContinueListening")
      bool hideFromContinueListening,
      @JsonKey(name: "ebookLocation") String? ebookLocation,
      @JsonKey(name: "ebookProgress") double? ebookProgress,
      @JsonKey(name: "lastUpdate") int? lastUpdate,
      @JsonKey(name: "startedAt") int startedAt,
      @JsonKey(name: "finishedAt") int? finishedAt});
}

/// @nodoc
class __$$MediaProgressImplCopyWithImpl<$Res>
    extends _$MediaProgressCopyWithImpl<$Res, _$MediaProgressImpl>
    implements _$$MediaProgressImplCopyWith<$Res> {
  __$$MediaProgressImplCopyWithImpl(
      _$MediaProgressImpl _value, $Res Function(_$MediaProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? libraryItemId = null,
    Object? episodeId = freezed,
    Object? mediaItemId = null,
    Object? mediaItemType = null,
    Object? duration = null,
    Object? progress = null,
    Object? currentTime = null,
    Object? isFinished = null,
    Object? hideFromContinueListening = null,
    Object? ebookLocation = freezed,
    Object? ebookProgress = freezed,
    Object? lastUpdate = freezed,
    Object? startedAt = null,
    Object? finishedAt = freezed,
  }) {
    return _then(_$MediaProgressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaItemId: null == mediaItemId
          ? _value.mediaItemId
          : mediaItemId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaItemType: null == mediaItemType
          ? _value.mediaItemType
          : mediaItemType // ignore: cast_nullable_to_non_nullable
              as MediaItemType,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFromContinueListening: null == hideFromContinueListening
          ? _value.hideFromContinueListening
          : hideFromContinueListening // ignore: cast_nullable_to_non_nullable
              as bool,
      ebookLocation: freezed == ebookLocation
          ? _value.ebookLocation
          : ebookLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      ebookProgress: freezed == ebookProgress
          ? _value.ebookProgress
          : ebookProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdate: freezed == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as int,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaProgressImpl implements _MediaProgress {
  const _$MediaProgressImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userId") required this.userId,
      @JsonKey(name: "libraryItemId") required this.libraryItemId,
      @JsonKey(name: "episodeId") required this.episodeId,
      @JsonKey(name: "mediaItemId") required this.mediaItemId,
      @JsonKey(name: "mediaItemType")
      @MediaItemTypeConverter()
      required this.mediaItemType,
      @JsonKey(name: "duration") required this.duration,
      @JsonKey(name: "progress") required this.progress,
      @JsonKey(name: "currentTime") required this.currentTime,
      @JsonKey(name: "isFinished") required this.isFinished,
      @JsonKey(name: "hideFromContinueListening")
      required this.hideFromContinueListening,
      @JsonKey(name: "ebookLocation") required this.ebookLocation,
      @JsonKey(name: "ebookProgress") required this.ebookProgress,
      @JsonKey(name: "lastUpdate") required this.lastUpdate,
      @JsonKey(name: "startedAt") required this.startedAt,
      @JsonKey(name: "finishedAt") required this.finishedAt});

  factory _$MediaProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaProgressImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "libraryItemId")
  final String libraryItemId;
  @override
  @JsonKey(name: "episodeId")
  final String? episodeId;
  @override
  @JsonKey(name: "mediaItemId")
  final String mediaItemId;
  @override
  @JsonKey(name: "mediaItemType")
  @MediaItemTypeConverter()
  final MediaItemType mediaItemType;
  @override
  @JsonKey(name: "duration")
  final double duration;
  @override
  @JsonKey(name: "progress")
  final double progress;
  @override
  @JsonKey(name: "currentTime")
  final double currentTime;
  @override
  @JsonKey(name: "isFinished")
  final bool isFinished;
  @override
  @JsonKey(name: "hideFromContinueListening")
  final bool hideFromContinueListening;
  @override
  @JsonKey(name: "ebookLocation")
  final String? ebookLocation;
  @override
  @JsonKey(name: "ebookProgress")
  final double? ebookProgress;
  @override
  @JsonKey(name: "lastUpdate")
  final int? lastUpdate;
  @override
  @JsonKey(name: "startedAt")
  final int startedAt;
  @override
  @JsonKey(name: "finishedAt")
  final int? finishedAt;

  @override
  String toString() {
    return 'MediaProgress(id: $id, userId: $userId, libraryItemId: $libraryItemId, episodeId: $episodeId, mediaItemId: $mediaItemId, mediaItemType: $mediaItemType, duration: $duration, progress: $progress, currentTime: $currentTime, isFinished: $isFinished, hideFromContinueListening: $hideFromContinueListening, ebookLocation: $ebookLocation, ebookProgress: $ebookProgress, lastUpdate: $lastUpdate, startedAt: $startedAt, finishedAt: $finishedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.libraryItemId, libraryItemId) ||
                other.libraryItemId == libraryItemId) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId) &&
            (identical(other.mediaItemId, mediaItemId) ||
                other.mediaItemId == mediaItemId) &&
            (identical(other.mediaItemType, mediaItemType) ||
                other.mediaItemType == mediaItemType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.hideFromContinueListening,
                    hideFromContinueListening) ||
                other.hideFromContinueListening == hideFromContinueListening) &&
            (identical(other.ebookLocation, ebookLocation) ||
                other.ebookLocation == ebookLocation) &&
            (identical(other.ebookProgress, ebookProgress) ||
                other.ebookProgress == ebookProgress) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      libraryItemId,
      episodeId,
      mediaItemId,
      mediaItemType,
      duration,
      progress,
      currentTime,
      isFinished,
      hideFromContinueListening,
      ebookLocation,
      ebookProgress,
      lastUpdate,
      startedAt,
      finishedAt);

  /// Create a copy of MediaProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaProgressImplCopyWith<_$MediaProgressImpl> get copyWith =>
      __$$MediaProgressImplCopyWithImpl<_$MediaProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaProgressImplToJson(
      this,
    );
  }
}

abstract class _MediaProgress implements MediaProgress {
  const factory _MediaProgress(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "userId") required final String userId,
          @JsonKey(name: "libraryItemId") required final String libraryItemId,
          @JsonKey(name: "episodeId") required final String? episodeId,
          @JsonKey(name: "mediaItemId") required final String mediaItemId,
          @JsonKey(name: "mediaItemType")
          @MediaItemTypeConverter()
          required final MediaItemType mediaItemType,
          @JsonKey(name: "duration") required final double duration,
          @JsonKey(name: "progress") required final double progress,
          @JsonKey(name: "currentTime") required final double currentTime,
          @JsonKey(name: "isFinished") required final bool isFinished,
          @JsonKey(name: "hideFromContinueListening")
          required final bool hideFromContinueListening,
          @JsonKey(name: "ebookLocation") required final String? ebookLocation,
          @JsonKey(name: "ebookProgress") required final double? ebookProgress,
          @JsonKey(name: "lastUpdate") required final int? lastUpdate,
          @JsonKey(name: "startedAt") required final int startedAt,
          @JsonKey(name: "finishedAt") required final int? finishedAt}) =
      _$MediaProgressImpl;

  factory _MediaProgress.fromJson(Map<String, dynamic> json) =
      _$MediaProgressImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "libraryItemId")
  String get libraryItemId;
  @override
  @JsonKey(name: "episodeId")
  String? get episodeId;
  @override
  @JsonKey(name: "mediaItemId")
  String get mediaItemId;
  @override
  @JsonKey(name: "mediaItemType")
  @MediaItemTypeConverter()
  MediaItemType get mediaItemType;
  @override
  @JsonKey(name: "duration")
  double get duration;
  @override
  @JsonKey(name: "progress")
  double get progress;
  @override
  @JsonKey(name: "currentTime")
  double get currentTime;
  @override
  @JsonKey(name: "isFinished")
  bool get isFinished;
  @override
  @JsonKey(name: "hideFromContinueListening")
  bool get hideFromContinueListening;
  @override
  @JsonKey(name: "ebookLocation")
  String? get ebookLocation;
  @override
  @JsonKey(name: "ebookProgress")
  double? get ebookProgress;
  @override
  @JsonKey(name: "lastUpdate")
  int? get lastUpdate;
  @override
  @JsonKey(name: "startedAt")
  int get startedAt;
  @override
  @JsonKey(name: "finishedAt")
  int? get finishedAt;

  /// Create a copy of MediaProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaProgressImplCopyWith<_$MediaProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
