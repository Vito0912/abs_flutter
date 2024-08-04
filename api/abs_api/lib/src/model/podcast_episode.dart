//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/audio_track.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/audio_file.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'podcast_episode.g.dart';

/// A single episode of a podcast.
///
/// Properties:
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [podcastId] - The ID of podcasts and podcast episodes after 2.3.0.
/// * [id] - The ID of podcasts and podcast episodes after 2.3.0.
/// * [oldEpisodeId] - The ID of podcasts on server version 2.2.23 and before.
/// * [index] - The index of the episode within the podcast.
/// * [season] - The season number of the episode.
/// * [episode] - The episode number within the season.
/// * [episodeType] - The type of episode (e.g., full, trailer).
/// * [title] - The title of the episode.
/// * [subtitle] - The subtitle of the episode.
/// * [description] - The description of the episode.
/// * [enclosure] - The enclosure object containing additional episode data.
/// * [guid] - The globally unique identifier for the episode.
/// * [pubDate] - The publication date of the episode.
/// * [chapters] - The chapters within the episode.
/// * [audioFile]
/// * [publishedAt] - The time (in ms since POSIX epoch) when was created.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [audioTrack]
/// * [duration] - The total length (in seconds) of the item or file.
/// * [size] - The total size (in bytes) of the item or file.
@BuiltValue()
abstract class PodcastEpisode
    implements Built<PodcastEpisode, PodcastEpisodeBuilder> {
  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  /// The ID of podcasts and podcast episodes after 2.3.0.
  @BuiltValueField(wireName: r'podcastId')
  String? get podcastId;

  /// The ID of podcasts and podcast episodes after 2.3.0.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of podcasts on server version 2.2.23 and before.
  @BuiltValueField(wireName: r'oldEpisodeId')
  String? get oldEpisodeId;

  /// The index of the episode within the podcast.
  @BuiltValueField(wireName: r'index')
  int? get index;

  /// The season number of the episode.
  @BuiltValueField(wireName: r'season')
  String? get season;

  /// The episode number within the season.
  @BuiltValueField(wireName: r'episode')
  String? get episode;

  /// The type of episode (e.g., full, trailer).
  @BuiltValueField(wireName: r'episodeType')
  String? get episodeType;

  /// The title of the episode.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The subtitle of the episode.
  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  /// The description of the episode.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The enclosure object containing additional episode data.
  @BuiltValueField(wireName: r'enclosure')
  BuiltMap<String, JsonObject?>? get enclosure;

  /// The globally unique identifier for the episode.
  @BuiltValueField(wireName: r'guid')
  String? get guid;

  /// The publication date of the episode.
  @BuiltValueField(wireName: r'pubDate')
  String? get pubDate;

  /// The chapters within the episode.
  @BuiltValueField(wireName: r'chapters')
  BuiltList<JsonObject>? get chapters;

  @BuiltValueField(wireName: r'audioFile')
  AudioFile? get audioFile;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'publishedAt')
  int? get publishedAt;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  @BuiltValueField(wireName: r'audioTrack')
  AudioTrack? get audioTrack;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// The total size (in bytes) of the item or file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  PodcastEpisode._();

  factory PodcastEpisode([void updates(PodcastEpisodeBuilder b)]) =
      _$PodcastEpisode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PodcastEpisodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PodcastEpisode> get serializer =>
      _$PodcastEpisodeSerializer();
}

class _$PodcastEpisodeSerializer
    implements PrimitiveSerializer<PodcastEpisode> {
  @override
  final Iterable<Type> types = const [PodcastEpisode, _$PodcastEpisode];

  @override
  final String wireName = r'PodcastEpisode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PodcastEpisode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.podcastId != null) {
      yield r'podcastId';
      yield serializers.serialize(
        object.podcastId,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.oldEpisodeId != null) {
      yield r'oldEpisodeId';
      yield serializers.serialize(
        object.oldEpisodeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.season != null) {
      yield r'season';
      yield serializers.serialize(
        object.season,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.episode != null) {
      yield r'episode';
      yield serializers.serialize(
        object.episode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.episodeType != null) {
      yield r'episodeType';
      yield serializers.serialize(
        object.episodeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.enclosure != null) {
      yield r'enclosure';
      yield serializers.serialize(
        object.enclosure,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.guid != null) {
      yield r'guid';
      yield serializers.serialize(
        object.guid,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pubDate != null) {
      yield r'pubDate';
      yield serializers.serialize(
        object.pubDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chapters != null) {
      yield r'chapters';
      yield serializers.serialize(
        object.chapters,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
    if (object.audioFile != null) {
      yield r'audioFile';
      yield serializers.serialize(
        object.audioFile,
        specifiedType: const FullType(AudioFile),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.audioTrack != null) {
      yield r'audioTrack';
      yield serializers.serialize(
        object.audioTrack,
        specifiedType: const FullType(AudioTrack),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PodcastEpisode object, {
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
    required PodcastEpisodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'podcastId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.podcastId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'oldEpisodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oldEpisodeId = valueDes;
          break;
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.index = valueDes;
          break;
        case r'season':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.season = valueDes;
          break;
        case r'episode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.episode = valueDes;
          break;
        case r'episodeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.episodeType = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'enclosure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.enclosure.replace(valueDes);
          break;
        case r'guid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.guid = valueDes;
          break;
        case r'pubDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pubDate = valueDes;
          break;
        case r'chapters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.chapters.replace(valueDes);
          break;
        case r'audioFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AudioFile),
          ) as AudioFile;
          result.audioFile.replace(valueDes);
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.publishedAt = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        case r'audioTrack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AudioTrack),
          ) as AudioTrack;
          result.audioTrack.replace(valueDes);
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PodcastEpisode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PodcastEpisodeBuilder();
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
