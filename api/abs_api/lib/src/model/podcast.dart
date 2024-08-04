//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/podcast_metadata.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/podcast_episode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'podcast.g.dart';

/// A podcast containing multiple episodes.
///
/// Properties:
/// * [id] - The ID of podcasts and podcast episodes after 2.3.0.
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [metadata]
/// * [coverPath] - The file path to the podcast's cover image.
/// * [tags] - The tags associated with the podcast.
/// * [episodes] - The episodes of the podcast.
/// * [autoDownloadEpisodes] - Whether episodes are automatically downloaded.
/// * [autoDownloadSchedule] - The schedule for automatic episode downloads, in cron format.
/// * [lastEpisodeCheck] - The timestamp of the last episode check.
/// * [maxEpisodesToKeep] - The maximum number of episodes to keep.
/// * [maxNewEpisodesToDownload] - The maximum number of new episodes to download when automatically downloading epsiodes.
/// * [lastCoverSearch] - The timestamp of the last cover search.
/// * [lastCoverSearchQuery] - The query used for the last cover search.
/// * [size] - The total size of all episodes in bytes.
/// * [duration] - The total duration of all episodes in seconds.
/// * [numTracks] - The number of tracks (episodes) in the podcast.
/// * [latestEpisodePublished] - The timestamp of the most recently published episode.
@BuiltValue()
abstract class Podcast implements Built<Podcast, PodcastBuilder> {
  /// The ID of podcasts and podcast episodes after 2.3.0.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  @BuiltValueField(wireName: r'metadata')
  PodcastMetadata? get metadata;

  /// The file path to the podcast's cover image.
  @BuiltValueField(wireName: r'coverPath')
  String? get coverPath;

  /// The tags associated with the podcast.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// The episodes of the podcast.
  @BuiltValueField(wireName: r'episodes')
  BuiltList<PodcastEpisode>? get episodes;

  /// Whether episodes are automatically downloaded.
  @BuiltValueField(wireName: r'autoDownloadEpisodes')
  bool? get autoDownloadEpisodes;

  /// The schedule for automatic episode downloads, in cron format.
  @BuiltValueField(wireName: r'autoDownloadSchedule')
  String? get autoDownloadSchedule;

  /// The timestamp of the last episode check.
  @BuiltValueField(wireName: r'lastEpisodeCheck')
  int? get lastEpisodeCheck;

  /// The maximum number of episodes to keep.
  @BuiltValueField(wireName: r'maxEpisodesToKeep')
  int? get maxEpisodesToKeep;

  /// The maximum number of new episodes to download when automatically downloading epsiodes.
  @BuiltValueField(wireName: r'maxNewEpisodesToDownload')
  int? get maxNewEpisodesToDownload;

  /// The timestamp of the last cover search.
  @BuiltValueField(wireName: r'lastCoverSearch')
  int? get lastCoverSearch;

  /// The query used for the last cover search.
  @BuiltValueField(wireName: r'lastCoverSearchQuery')
  String? get lastCoverSearchQuery;

  /// The total size of all episodes in bytes.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// The total duration of all episodes in seconds.
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  /// The number of tracks (episodes) in the podcast.
  @BuiltValueField(wireName: r'numTracks')
  int? get numTracks;

  /// The timestamp of the most recently published episode.
  @BuiltValueField(wireName: r'latestEpisodePublished')
  int? get latestEpisodePublished;

  Podcast._();

  factory Podcast([void updates(PodcastBuilder b)]) = _$Podcast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PodcastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Podcast> get serializer => _$PodcastSerializer();
}

class _$PodcastSerializer implements PrimitiveSerializer<Podcast> {
  @override
  final Iterable<Type> types = const [Podcast, _$Podcast];

  @override
  final String wireName = r'Podcast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Podcast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(PodcastMetadata),
      );
    }
    if (object.coverPath != null) {
      yield r'coverPath';
      yield serializers.serialize(
        object.coverPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.episodes != null) {
      yield r'episodes';
      yield serializers.serialize(
        object.episodes,
        specifiedType: const FullType(BuiltList, [FullType(PodcastEpisode)]),
      );
    }
    if (object.autoDownloadEpisodes != null) {
      yield r'autoDownloadEpisodes';
      yield serializers.serialize(
        object.autoDownloadEpisodes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoDownloadSchedule != null) {
      yield r'autoDownloadSchedule';
      yield serializers.serialize(
        object.autoDownloadSchedule,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastEpisodeCheck != null) {
      yield r'lastEpisodeCheck';
      yield serializers.serialize(
        object.lastEpisodeCheck,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxEpisodesToKeep != null) {
      yield r'maxEpisodesToKeep';
      yield serializers.serialize(
        object.maxEpisodesToKeep,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxNewEpisodesToDownload != null) {
      yield r'maxNewEpisodesToDownload';
      yield serializers.serialize(
        object.maxNewEpisodesToDownload,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastCoverSearch != null) {
      yield r'lastCoverSearch';
      yield serializers.serialize(
        object.lastCoverSearch,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastCoverSearchQuery != null) {
      yield r'lastCoverSearchQuery';
      yield serializers.serialize(
        object.lastCoverSearchQuery,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.numTracks != null) {
      yield r'numTracks';
      yield serializers.serialize(
        object.numTracks,
        specifiedType: const FullType(int),
      );
    }
    if (object.latestEpisodePublished != null) {
      yield r'latestEpisodePublished';
      yield serializers.serialize(
        object.latestEpisodePublished,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Podcast object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PodcastBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PodcastMetadata),
          ) as PodcastMetadata;
          result.metadata.replace(valueDes);
          break;
        case r'coverPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverPath = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'episodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PodcastEpisode)]),
          ) as BuiltList<PodcastEpisode>;
          result.episodes.replace(valueDes);
          break;
        case r'autoDownloadEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoDownloadEpisodes = valueDes;
          break;
        case r'autoDownloadSchedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.autoDownloadSchedule = valueDes;
          break;
        case r'lastEpisodeCheck':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastEpisodeCheck = valueDes;
          break;
        case r'maxEpisodesToKeep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxEpisodesToKeep = valueDes;
          break;
        case r'maxNewEpisodesToDownload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxNewEpisodesToDownload = valueDes;
          break;
        case r'lastCoverSearch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastCoverSearch = valueDes;
          break;
        case r'lastCoverSearchQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastCoverSearchQuery = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'numTracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numTracks = valueDes;
          break;
        case r'latestEpisodePublished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.latestEpisodePublished = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Podcast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PodcastBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
