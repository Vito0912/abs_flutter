// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PodcastMedia _$PodcastMediaFromJson(Map<String, dynamic> json) {
  return _PodcastMedia.fromJson(json);
}

/// @nodoc
mixin _$PodcastMedia {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemId")
  String get libraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  PodcastMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPath")
  String? get coverPath => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "episodes")
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  @JsonKey(name: "autoDownloadEpisodes")
  bool? get autoDownloadEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: "autoDownloadSchedule")
  String? get autoDownloadSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: "lastEpisodeCheck")
  int? get lastEpisodeCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "maxEpisodesToKeep")
  int? get maxEpisodesToKeep => throw _privateConstructorUsedError;
  @JsonKey(name: "maxNewEpisodesToDownload")
  int? get maxNewEpisodesToDownload => throw _privateConstructorUsedError;

  /// Serializes this PodcastMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PodcastMediaCopyWith<PodcastMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastMediaCopyWith<$Res> {
  factory $PodcastMediaCopyWith(
          PodcastMedia value, $Res Function(PodcastMedia) then) =
      _$PodcastMediaCopyWithImpl<$Res, PodcastMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "metadata") PodcastMetadata metadata,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "episodes") List<Episode>? episodes,
      @JsonKey(name: "autoDownloadEpisodes") bool? autoDownloadEpisodes,
      @JsonKey(name: "autoDownloadSchedule") String? autoDownloadSchedule,
      @JsonKey(name: "lastEpisodeCheck") int? lastEpisodeCheck,
      @JsonKey(name: "maxEpisodesToKeep") int? maxEpisodesToKeep,
      @JsonKey(name: "maxNewEpisodesToDownload")
      int? maxNewEpisodesToDownload});

  $PodcastMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$PodcastMediaCopyWithImpl<$Res, $Val extends PodcastMedia>
    implements $PodcastMediaCopyWith<$Res> {
  _$PodcastMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryItemId = null,
    Object? metadata = null,
    Object? coverPath = freezed,
    Object? tags = freezed,
    Object? episodes = freezed,
    Object? autoDownloadEpisodes = freezed,
    Object? autoDownloadSchedule = freezed,
    Object? lastEpisodeCheck = freezed,
    Object? maxEpisodesToKeep = freezed,
    Object? maxNewEpisodesToDownload = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PodcastMetadata,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      autoDownloadEpisodes: freezed == autoDownloadEpisodes
          ? _value.autoDownloadEpisodes
          : autoDownloadEpisodes // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoDownloadSchedule: freezed == autoDownloadSchedule
          ? _value.autoDownloadSchedule
          : autoDownloadSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEpisodeCheck: freezed == lastEpisodeCheck
          ? _value.lastEpisodeCheck
          : lastEpisodeCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      maxEpisodesToKeep: freezed == maxEpisodesToKeep
          ? _value.maxEpisodesToKeep
          : maxEpisodesToKeep // ignore: cast_nullable_to_non_nullable
              as int?,
      maxNewEpisodesToDownload: freezed == maxNewEpisodesToDownload
          ? _value.maxNewEpisodesToDownload
          : maxNewEpisodesToDownload // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PodcastMetadataCopyWith<$Res> get metadata {
    return $PodcastMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PodcastMediaImplCopyWith<$Res>
    implements $PodcastMediaCopyWith<$Res> {
  factory _$$PodcastMediaImplCopyWith(
          _$PodcastMediaImpl value, $Res Function(_$PodcastMediaImpl) then) =
      __$$PodcastMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "metadata") PodcastMetadata metadata,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "episodes") List<Episode>? episodes,
      @JsonKey(name: "autoDownloadEpisodes") bool? autoDownloadEpisodes,
      @JsonKey(name: "autoDownloadSchedule") String? autoDownloadSchedule,
      @JsonKey(name: "lastEpisodeCheck") int? lastEpisodeCheck,
      @JsonKey(name: "maxEpisodesToKeep") int? maxEpisodesToKeep,
      @JsonKey(name: "maxNewEpisodesToDownload")
      int? maxNewEpisodesToDownload});

  @override
  $PodcastMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$PodcastMediaImplCopyWithImpl<$Res>
    extends _$PodcastMediaCopyWithImpl<$Res, _$PodcastMediaImpl>
    implements _$$PodcastMediaImplCopyWith<$Res> {
  __$$PodcastMediaImplCopyWithImpl(
      _$PodcastMediaImpl _value, $Res Function(_$PodcastMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryItemId = null,
    Object? metadata = null,
    Object? coverPath = freezed,
    Object? tags = freezed,
    Object? episodes = freezed,
    Object? autoDownloadEpisodes = freezed,
    Object? autoDownloadSchedule = freezed,
    Object? lastEpisodeCheck = freezed,
    Object? maxEpisodesToKeep = freezed,
    Object? maxNewEpisodesToDownload = freezed,
  }) {
    return _then(_$PodcastMediaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PodcastMetadata,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      episodes: freezed == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      autoDownloadEpisodes: freezed == autoDownloadEpisodes
          ? _value.autoDownloadEpisodes
          : autoDownloadEpisodes // ignore: cast_nullable_to_non_nullable
              as bool?,
      autoDownloadSchedule: freezed == autoDownloadSchedule
          ? _value.autoDownloadSchedule
          : autoDownloadSchedule // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEpisodeCheck: freezed == lastEpisodeCheck
          ? _value.lastEpisodeCheck
          : lastEpisodeCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      maxEpisodesToKeep: freezed == maxEpisodesToKeep
          ? _value.maxEpisodesToKeep
          : maxEpisodesToKeep // ignore: cast_nullable_to_non_nullable
              as int?,
      maxNewEpisodesToDownload: freezed == maxNewEpisodesToDownload
          ? _value.maxNewEpisodesToDownload
          : maxNewEpisodesToDownload // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PodcastMediaImpl implements _PodcastMedia {
  const _$PodcastMediaImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "libraryItemId") required this.libraryItemId,
      @JsonKey(name: "metadata") required this.metadata,
      @JsonKey(name: "coverPath") this.coverPath,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "episodes") final List<Episode>? episodes,
      @JsonKey(name: "autoDownloadEpisodes") this.autoDownloadEpisodes,
      @JsonKey(name: "autoDownloadSchedule") this.autoDownloadSchedule,
      @JsonKey(name: "lastEpisodeCheck") this.lastEpisodeCheck,
      @JsonKey(name: "maxEpisodesToKeep") this.maxEpisodesToKeep,
      @JsonKey(name: "maxNewEpisodesToDownload") this.maxNewEpisodesToDownload})
      : _tags = tags,
        _episodes = episodes;

  factory _$PodcastMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PodcastMediaImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "libraryItemId")
  final String libraryItemId;
  @override
  @JsonKey(name: "metadata")
  final PodcastMetadata metadata;
  @override
  @JsonKey(name: "coverPath")
  final String? coverPath;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Episode>? _episodes;
  @override
  @JsonKey(name: "episodes")
  List<Episode>? get episodes {
    final value = _episodes;
    if (value == null) return null;
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "autoDownloadEpisodes")
  final bool? autoDownloadEpisodes;
  @override
  @JsonKey(name: "autoDownloadSchedule")
  final String? autoDownloadSchedule;
  @override
  @JsonKey(name: "lastEpisodeCheck")
  final int? lastEpisodeCheck;
  @override
  @JsonKey(name: "maxEpisodesToKeep")
  final int? maxEpisodesToKeep;
  @override
  @JsonKey(name: "maxNewEpisodesToDownload")
  final int? maxNewEpisodesToDownload;

  @override
  String toString() {
    return 'PodcastMedia(id: $id, libraryItemId: $libraryItemId, metadata: $metadata, coverPath: $coverPath, tags: $tags, episodes: $episodes, autoDownloadEpisodes: $autoDownloadEpisodes, autoDownloadSchedule: $autoDownloadSchedule, lastEpisodeCheck: $lastEpisodeCheck, maxEpisodesToKeep: $maxEpisodesToKeep, maxNewEpisodesToDownload: $maxNewEpisodesToDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PodcastMediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libraryItemId, libraryItemId) ||
                other.libraryItemId == libraryItemId) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.autoDownloadEpisodes, autoDownloadEpisodes) ||
                other.autoDownloadEpisodes == autoDownloadEpisodes) &&
            (identical(other.autoDownloadSchedule, autoDownloadSchedule) ||
                other.autoDownloadSchedule == autoDownloadSchedule) &&
            (identical(other.lastEpisodeCheck, lastEpisodeCheck) ||
                other.lastEpisodeCheck == lastEpisodeCheck) &&
            (identical(other.maxEpisodesToKeep, maxEpisodesToKeep) ||
                other.maxEpisodesToKeep == maxEpisodesToKeep) &&
            (identical(
                    other.maxNewEpisodesToDownload, maxNewEpisodesToDownload) ||
                other.maxNewEpisodesToDownload == maxNewEpisodesToDownload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      libraryItemId,
      metadata,
      coverPath,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_episodes),
      autoDownloadEpisodes,
      autoDownloadSchedule,
      lastEpisodeCheck,
      maxEpisodesToKeep,
      maxNewEpisodesToDownload);

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PodcastMediaImplCopyWith<_$PodcastMediaImpl> get copyWith =>
      __$$PodcastMediaImplCopyWithImpl<_$PodcastMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PodcastMediaImplToJson(
      this,
    );
  }
}

abstract class _PodcastMedia implements PodcastMedia {
  const factory _PodcastMedia(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "libraryItemId") required final String libraryItemId,
      @JsonKey(name: "metadata") required final PodcastMetadata metadata,
      @JsonKey(name: "coverPath") final String? coverPath,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "episodes") final List<Episode>? episodes,
      @JsonKey(name: "autoDownloadEpisodes") final bool? autoDownloadEpisodes,
      @JsonKey(name: "autoDownloadSchedule") final String? autoDownloadSchedule,
      @JsonKey(name: "lastEpisodeCheck") final int? lastEpisodeCheck,
      @JsonKey(name: "maxEpisodesToKeep") final int? maxEpisodesToKeep,
      @JsonKey(name: "maxNewEpisodesToDownload")
      final int? maxNewEpisodesToDownload}) = _$PodcastMediaImpl;

  factory _PodcastMedia.fromJson(Map<String, dynamic> json) =
      _$PodcastMediaImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "libraryItemId")
  String get libraryItemId;
  @override
  @JsonKey(name: "metadata")
  PodcastMetadata get metadata;
  @override
  @JsonKey(name: "coverPath")
  String? get coverPath;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "episodes")
  List<Episode>? get episodes;
  @override
  @JsonKey(name: "autoDownloadEpisodes")
  bool? get autoDownloadEpisodes;
  @override
  @JsonKey(name: "autoDownloadSchedule")
  String? get autoDownloadSchedule;
  @override
  @JsonKey(name: "lastEpisodeCheck")
  int? get lastEpisodeCheck;
  @override
  @JsonKey(name: "maxEpisodesToKeep")
  int? get maxEpisodesToKeep;
  @override
  @JsonKey(name: "maxNewEpisodesToDownload")
  int? get maxNewEpisodesToDownload;

  /// Create a copy of PodcastMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PodcastMediaImplCopyWith<_$PodcastMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
