//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/audio_track.dart';
import 'package:abs_api/src/model/podcast_metadata.dart';
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/playback_session_podcast.dart';
import 'package:abs_api/src/model/device_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playback_session_podcast_expanded.g.dart';

/// Expanded podcast playback session schema.
///
/// Properties:
/// * [id] - The playback session identifier.
/// * [userId] - The ID of the user.
/// * [libraryId] - The ID of the library.
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [mediaType]
/// * [displayTitle] - The display title of the media.
/// * [displayAuthor] - The display author of the media.
/// * [coverPath] - The absolute path on the server of the cover file. Will be null if there is no cover.
/// * [duration] - The total length (in seconds) of the item or file.
/// * [playMethod] - The method used to play the media. 0 = Direct play, 1 = Direct Stream, 2 = Transcode, 3 = Local
/// * [mediaPlayer] - The media player used to play the media.
/// * [deviceInfo]
/// * [serverVersion] - The server version
/// * [date] - TODO
/// * [dayOfWeek] - TODO
/// * [timeListening] - The total length (in seconds) of the item or file.
/// * [startTime] - The total length (in seconds) of the item or file.
/// * [currentTime] - The total length (in seconds) of the item or file.
/// * [createdAt] - The time (in ms since POSIX epoch) when was created.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [mediaMetadata]
/// * [episodeId] - The ID of podcasts and podcast episodes after 2.3.0.
/// * [audioTracks] - The audio tracks of the media.
/// * [videoTrack] - The video track of the media. TODO
/// * [libraryItem]
@BuiltValue()
abstract class PlaybackSessionPodcastExpanded
    implements
        PlaybackSessionPodcast,
        Built<PlaybackSessionPodcastExpanded,
            PlaybackSessionPodcastExpandedBuilder> {
  /// The audio tracks of the media.
  @BuiltValueField(wireName: r'audioTracks')
  BuiltList<AudioTrack>? get audioTracks;

  /// The video track of the media. TODO
  @BuiltValueField(wireName: r'videoTrack')
  JsonObject? get videoTrack;

  @BuiltValueField(wireName: r'libraryItem')
  LibraryItem? get libraryItem;

  PlaybackSessionPodcastExpanded._();

  factory PlaybackSessionPodcastExpanded(
          [void updates(PlaybackSessionPodcastExpandedBuilder b)]) =
      _$PlaybackSessionPodcastExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaybackSessionPodcastExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaybackSessionPodcastExpanded> get serializer =>
      _$PlaybackSessionPodcastExpandedSerializer();
}

class _$PlaybackSessionPodcastExpandedSerializer
    implements PrimitiveSerializer<PlaybackSessionPodcastExpanded> {
  @override
  final Iterable<Type> types = const [
    PlaybackSessionPodcastExpanded,
    _$PlaybackSessionPodcastExpanded
  ];

  @override
  final String wireName = r'PlaybackSessionPodcastExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaybackSessionPodcastExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverPath != null) {
      yield r'coverPath';
      yield serializers.serialize(
        object.coverPath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.serverVersion != null) {
      yield r'serverVersion';
      yield serializers.serialize(
        object.serverVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryItem != null) {
      yield r'libraryItem';
      yield serializers.serialize(
        object.libraryItem,
        specifiedType: const FullType(LibraryItem),
      );
    }
    if (object.episodeId != null) {
      yield r'episodeId';
      yield serializers.serialize(
        object.episodeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeListening != null) {
      yield r'timeListening';
      yield serializers.serialize(
        object.timeListening,
        specifiedType: const FullType(num),
      );
    }
    if (object.audioTracks != null) {
      yield r'audioTracks';
      yield serializers.serialize(
        object.audioTracks,
        specifiedType: const FullType(BuiltList, [FullType(AudioTrack)]),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
    if (object.displayTitle != null) {
      yield r'displayTitle';
      yield serializers.serialize(
        object.displayTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.displayAuthor != null) {
      yield r'displayAuthor';
      yield serializers.serialize(
        object.displayAuthor,
        specifiedType: const FullType(String),
      );
    }
    if (object.dayOfWeek != null) {
      yield r'dayOfWeek';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType: const FullType(String),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(num),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.videoTrack != null) {
      yield r'videoTrack';
      yield serializers.serialize(
        object.videoTrack,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(MediaType),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceInfo != null) {
      yield r'deviceInfo';
      yield serializers.serialize(
        object.deviceInfo,
        specifiedType: const FullType(DeviceInfo),
      );
    }
    if (object.currentTime != null) {
      yield r'currentTime';
      yield serializers.serialize(
        object.currentTime,
        specifiedType: const FullType(num),
      );
    }
    if (object.mediaPlayer != null) {
      yield r'mediaPlayer';
      yield serializers.serialize(
        object.mediaPlayer,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaMetadata != null) {
      yield r'mediaMetadata';
      yield serializers.serialize(
        object.mediaMetadata,
        specifiedType: const FullType(PodcastMetadata),
      );
    }
    if (object.playMethod != null) {
      yield r'playMethod';
      yield serializers.serialize(
        object.playMethod,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaybackSessionPodcastExpanded object, {
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
    required PlaybackSessionPodcastExpandedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'coverPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverPath = valueDes;
          break;
        case r'serverVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serverVersion = valueDes;
          break;
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryId = valueDes;
          break;
        case r'libraryItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibraryItem),
          ) as LibraryItem;
          result.libraryItem = valueDes;
          break;
        case r'episodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.episodeId = valueDes;
          break;
        case r'timeListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.timeListening = valueDes;
          break;
        case r'audioTracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AudioTrack)]),
          ) as BuiltList<AudioTrack>;
          result.audioTracks.replace(valueDes);
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        case r'displayTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayTitle = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        case r'displayAuthor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayAuthor = valueDes;
          break;
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayOfWeek = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.startTime = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        case r'videoTrack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.videoTrack = valueDes;
          break;
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaType),
          ) as MediaType;
          result.mediaType = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'deviceInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceInfo),
          ) as DeviceInfo;
          result.deviceInfo.replace(valueDes);
          break;
        case r'currentTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.currentTime = valueDes;
          break;
        case r'mediaPlayer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mediaPlayer = valueDes;
          break;
        case r'mediaMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PodcastMetadata),
          ) as PodcastMetadata;
          result.mediaMetadata.replace(valueDes);
          break;
        case r'playMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.playMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaybackSessionPodcastExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaybackSessionPodcastExpandedBuilder();
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
