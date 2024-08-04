//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/book_minified.dart';
import 'package:abs_api/src/model/book_metadata_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'playback_session_media_metadata.g.dart';

/// The metadata of the media.
///
/// Properties:
/// * [metadata]
/// * [coverPath] - The absolute path on the server of the cover file. Will be null if there is no cover.
/// * [tags] - Tags applied to items.
/// * [numTracks] - The number of tracks the book's audio files have.
/// * [numAudioFiles] - The number of audio files the book has.
/// * [numChapters] - The number of chapters the book has.
/// * [numMissingParts] - The total number of missing parts the book has.
/// * [numInvalidAudioFiles] - The number of invalid audio files the book has.
/// * [duration] - The total length (in seconds) of the item or file.
/// * [size] - The total size (in bytes) of the item or file.
/// * [ebookFormat] - The format of ebook of the book. Will be null if the book is an audiobook.
@BuiltValue()
abstract class PlaybackSessionMediaMetadata
    implements
        Built<PlaybackSessionMediaMetadata,
            PlaybackSessionMediaMetadataBuilder> {
  /// One Of [BookMinified]
  OneOf get oneOf;

  PlaybackSessionMediaMetadata._();

  factory PlaybackSessionMediaMetadata(
          [void updates(PlaybackSessionMediaMetadataBuilder b)]) =
      _$PlaybackSessionMediaMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaybackSessionMediaMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaybackSessionMediaMetadata> get serializer =>
      _$PlaybackSessionMediaMetadataSerializer();
}

class _$PlaybackSessionMediaMetadataSerializer
    implements PrimitiveSerializer<PlaybackSessionMediaMetadata> {
  @override
  final Iterable<Type> types = const [
    PlaybackSessionMediaMetadata,
    _$PlaybackSessionMediaMetadata
  ];

  @override
  final String wireName = r'PlaybackSessionMediaMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaybackSessionMediaMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    PlaybackSessionMediaMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  PlaybackSessionMediaMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaybackSessionMediaMetadataBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BookMinified),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
