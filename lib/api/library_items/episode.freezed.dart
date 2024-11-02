// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  @JsonKey(name: "libraryItemId")
  String get libraryItemId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: "season")
  String? get season => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  String? get episode => throw _privateConstructorUsedError;
  @JsonKey(name: "episodeType")
  String? get episodeType => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description =>
      throw _privateConstructorUsedError; //TODO: PodcastEnclosure
  @JsonKey(name: "pubDate")
  String? get pubDate => throw _privateConstructorUsedError;
  @JsonKey(name: "audioFile")
  AudioFile? get audioFile => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedAt")
  int? get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int? get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "season") String? season,
      @JsonKey(name: "episode") String? episode,
      @JsonKey(name: "episodeType") String? episodeType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pubDate") String? pubDate,
      @JsonKey(name: "audioFile") AudioFile? audioFile,
      @JsonKey(name: "publishedAt") int? publishedAt,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt});

  $AudioFileCopyWith<$Res>? get audioFile;
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryItemId = null,
    Object? id = null,
    Object? index = freezed,
    Object? season = freezed,
    Object? episode = freezed,
    Object? episodeType = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? pubDate = freezed,
    Object? audioFile = freezed,
    Object? publishedAt = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeType: freezed == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFile: freezed == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as AudioFile?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioFileCopyWith<$Res>? get audioFile {
    if (_value.audioFile == null) {
      return null;
    }

    return $AudioFileCopyWith<$Res>(_value.audioFile!, (value) {
      return _then(_value.copyWith(audioFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItemId") String libraryItemId,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "season") String? season,
      @JsonKey(name: "episode") String? episode,
      @JsonKey(name: "episodeType") String? episodeType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "subtitle") String? subtitle,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pubDate") String? pubDate,
      @JsonKey(name: "audioFile") AudioFile? audioFile,
      @JsonKey(name: "publishedAt") int? publishedAt,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt});

  @override
  $AudioFileCopyWith<$Res>? get audioFile;
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryItemId = null,
    Object? id = null,
    Object? index = freezed,
    Object? season = freezed,
    Object? episode = freezed,
    Object? episodeType = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? pubDate = freezed,
    Object? audioFile = freezed,
    Object? publishedAt = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$EpisodeImpl(
      libraryItemId: null == libraryItemId
          ? _value.libraryItemId
          : libraryItemId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeType: freezed == episodeType
          ? _value.episodeType
          : episodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFile: freezed == audioFile
          ? _value.audioFile
          : audioFile // ignore: cast_nullable_to_non_nullable
              as AudioFile?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  const _$EpisodeImpl(
      {@JsonKey(name: "libraryItemId") required this.libraryItemId,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "index") this.index,
      @JsonKey(name: "season") this.season,
      @JsonKey(name: "episode") this.episode,
      @JsonKey(name: "episodeType") this.episodeType,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "subtitle") this.subtitle,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "pubDate") this.pubDate,
      @JsonKey(name: "audioFile") this.audioFile,
      @JsonKey(name: "publishedAt") this.publishedAt,
      @JsonKey(name: "addedAt") this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  @JsonKey(name: "libraryItemId")
  final String libraryItemId;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "index")
  final int? index;
  @override
  @JsonKey(name: "season")
  final String? season;
  @override
  @JsonKey(name: "episode")
  final String? episode;
  @override
  @JsonKey(name: "episodeType")
  final String? episodeType;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "subtitle")
  final String? subtitle;
  @override
  @JsonKey(name: "description")
  final String? description;
//TODO: PodcastEnclosure
  @override
  @JsonKey(name: "pubDate")
  final String? pubDate;
  @override
  @JsonKey(name: "audioFile")
  final AudioFile? audioFile;
  @override
  @JsonKey(name: "publishedAt")
  final int? publishedAt;
  @override
  @JsonKey(name: "addedAt")
  final int? addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;

  @override
  String toString() {
    return 'Episode(libraryItemId: $libraryItemId, id: $id, index: $index, season: $season, episode: $episode, episodeType: $episodeType, title: $title, subtitle: $subtitle, description: $description, pubDate: $pubDate, audioFile: $audioFile, publishedAt: $publishedAt, addedAt: $addedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.libraryItemId, libraryItemId) ||
                other.libraryItemId == libraryItemId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.episodeType, episodeType) ||
                other.episodeType == episodeType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.audioFile, audioFile) ||
                other.audioFile == audioFile) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      libraryItemId,
      id,
      index,
      season,
      episode,
      episodeType,
      title,
      subtitle,
      description,
      pubDate,
      audioFile,
      publishedAt,
      addedAt,
      updatedAt);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {@JsonKey(name: "libraryItemId") required final String libraryItemId,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "index") final int? index,
      @JsonKey(name: "season") final String? season,
      @JsonKey(name: "episode") final String? episode,
      @JsonKey(name: "episodeType") final String? episodeType,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "subtitle") final String? subtitle,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "pubDate") final String? pubDate,
      @JsonKey(name: "audioFile") final AudioFile? audioFile,
      @JsonKey(name: "publishedAt") final int? publishedAt,
      @JsonKey(name: "addedAt") final int? addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt}) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  @JsonKey(name: "libraryItemId")
  String get libraryItemId;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "index")
  int? get index;
  @override
  @JsonKey(name: "season")
  String? get season;
  @override
  @JsonKey(name: "episode")
  String? get episode;
  @override
  @JsonKey(name: "episodeType")
  String? get episodeType;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "subtitle")
  String? get subtitle;
  @override
  @JsonKey(name: "description")
  String? get description; //TODO: PodcastEnclosure
  @override
  @JsonKey(name: "pubDate")
  String? get pubDate;
  @override
  @JsonKey(name: "audioFile")
  AudioFile? get audioFile;
  @override
  @JsonKey(name: "publishedAt")
  int? get publishedAt;
  @override
  @JsonKey(name: "addedAt")
  int? get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
