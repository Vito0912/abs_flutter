//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/audio_track.dart';
import 'package:abs_api/src/model/book_chapter.dart';
import 'package:abs_api/src/model/podcast_metadata.dart';
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/device_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item.dart';
import 'package:abs_api/src/model/playback_session_book_expanded.dart';
import 'package:abs_api/src/model/playback_session_podcast_expanded.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'playback_session_expanded.g.dart';

/// A playback session object.
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
/// * [chapters] - The chapters of the media.
/// * [audioTracks] - The audio tracks of the media.
/// * [videoTrack] - The video track of the media. TODO
/// * [libraryItem]
/// * [episodeId] - The ID of podcasts and podcast episodes after 2.3.0.
@BuiltValue()
abstract class PlaybackSessionExpanded
    implements Built<PlaybackSessionExpanded, PlaybackSessionExpandedBuilder> {
  /// One Of [PlaybackSessionBookExpanded], [PlaybackSessionPodcastExpanded]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'mediaType';

  static const Map<String, Type> discriminatorMapping = {
    r'book': PlaybackSessionBookExpanded,
    r'podcast': PlaybackSessionPodcastExpanded,
  };

  PlaybackSessionExpanded._();

  factory PlaybackSessionExpanded(
          [void updates(PlaybackSessionExpandedBuilder b)]) =
      _$PlaybackSessionExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaybackSessionExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaybackSessionExpanded> get serializer =>
      _$PlaybackSessionExpandedSerializer();
}

extension PlaybackSessionExpandedDiscriminatorExt on PlaybackSessionExpanded {
  String? get discriminatorValue {
    if (this is PlaybackSessionBookExpanded) {
      return r'book';
    }
    if (this is PlaybackSessionPodcastExpanded) {
      return r'podcast';
    }
    return null;
  }
}

extension PlaybackSessionExpandedBuilderDiscriminatorExt
    on PlaybackSessionExpandedBuilder {
  String? get discriminatorValue {
    if (this is PlaybackSessionBookExpandedBuilder) {
      return r'book';
    }
    if (this is PlaybackSessionPodcastExpandedBuilder) {
      return r'podcast';
    }
    return null;
  }
}

class _$PlaybackSessionExpandedSerializer
    implements PrimitiveSerializer<PlaybackSessionExpanded> {
  @override
  final Iterable<Type> types = const [
    PlaybackSessionExpanded,
    _$PlaybackSessionExpanded
  ];

  @override
  final String wireName = r'PlaybackSessionExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaybackSessionExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PlaybackSessionExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PlaybackSessionExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaybackSessionExpandedBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(PlaybackSessionExpanded.discriminatorFieldName) +
            1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      PlaybackSessionBookExpanded,
      PlaybackSessionPodcastExpanded,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'book':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaybackSessionBookExpanded),
        ) as PlaybackSessionBookExpanded;
        oneOfType = PlaybackSessionBookExpanded;
        break;
      case r'podcast':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaybackSessionPodcastExpanded),
        ) as PlaybackSessionPodcastExpanded;
        oneOfType = PlaybackSessionPodcastExpanded;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}
