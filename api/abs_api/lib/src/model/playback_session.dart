//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/playback_session_book.dart';
import 'package:abs_api/src/model/playback_session_podcast.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'playback_session.g.dart';

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
/// * [episodeId] - The ID of podcasts and podcast episodes after 2.3.0.
@BuiltValue()
abstract class PlaybackSession
    implements Built<PlaybackSession, PlaybackSessionBuilder> {
  /// One Of [PlaybackSessionBook], [PlaybackSessionPodcast]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'mediaType';

  static const Map<String, Type> discriminatorMapping = {
    r'book': PlaybackSessionBook,
    r'podcast': PlaybackSessionPodcast,
  };

  PlaybackSession._();

  factory PlaybackSession([void updates(PlaybackSessionBuilder b)]) =
      _$PlaybackSession;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaybackSessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaybackSession> get serializer =>
      _$PlaybackSessionSerializer();
}

extension PlaybackSessionDiscriminatorExt on PlaybackSession {
  String? get discriminatorValue {
    if (this is PlaybackSessionBook) {
      return r'book';
    }
    if (this is PlaybackSessionPodcast) {
      return r'podcast';
    }
    return null;
  }
}

extension PlaybackSessionBuilderDiscriminatorExt on PlaybackSessionBuilder {
  String? get discriminatorValue {
    if (this is PlaybackSessionBookBuilder) {
      return r'book';
    }
    if (this is PlaybackSessionPodcastBuilder) {
      return r'podcast';
    }
    return null;
  }
}

class _$PlaybackSessionSerializer
    implements PrimitiveSerializer<PlaybackSession> {
  @override
  final Iterable<Type> types = const [PlaybackSession, _$PlaybackSession];

  @override
  final String wireName = r'PlaybackSession';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaybackSession object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PlaybackSession object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PlaybackSession deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaybackSessionBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(PlaybackSession.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      PlaybackSessionBook,
      PlaybackSessionPodcast,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'book':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaybackSessionBook),
        ) as PlaybackSessionBook;
        oneOfType = PlaybackSessionBook;
        break;
      case r'podcast':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaybackSessionPodcast),
        ) as PlaybackSessionPodcast;
        oneOfType = PlaybackSessionPodcast;
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
