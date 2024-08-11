//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/book_minified.dart';
import 'package:abs_api/src/model/podcast.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'library_item_base_media.g.dart';

/// LibraryItemBaseMedia
///
/// Properties:
/// * [metadata]
/// * [coverPath] - The file path to the podcast's cover image.
/// * [tags] - The tags associated with the podcast.
/// * [numTracks] - The number of tracks (episodes) in the podcast.
/// * [numAudioFiles] - The number of audio files the book has.
/// * [numChapters] - The number of chapters the book has.
/// * [numMissingParts] - The total number of missing parts the book has.
/// * [numInvalidAudioFiles] - The number of invalid audio files the book has.
/// * [duration] - The total duration of all episodes in seconds.
/// * [size] - The total size of all episodes in bytes.
/// * [ebookFormat] - The format of ebook of the book. Will be null if the book is an audiobook.
/// * [id] - The ID of podcasts and podcast episodes after 2.3.0.
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [episodes] - The episodes of the podcast.
/// * [autoDownloadEpisodes] - Whether episodes are automatically downloaded.
/// * [autoDownloadSchedule] - The schedule for automatic episode downloads, in cron format.
/// * [lastEpisodeCheck] - The timestamp of the last episode check.
/// * [maxEpisodesToKeep] - The maximum number of episodes to keep.
/// * [maxNewEpisodesToDownload] - The maximum number of new episodes to download when automatically downloading epsiodes.
/// * [lastCoverSearch] - The timestamp of the last cover search.
/// * [lastCoverSearchQuery] - The query used for the last cover search.
/// * [latestEpisodePublished] - The timestamp of the most recently published episode.
@BuiltValue()
abstract class LibraryItemBaseMedia
    implements Built<LibraryItemBaseMedia, LibraryItemBaseMediaBuilder> {
  /// One Of [BookMinified], [Podcast]
  OneOf get oneOf;

  LibraryItemBaseMedia._();

  factory LibraryItemBaseMedia([void updates(LibraryItemBaseMediaBuilder b)]) =
      _$LibraryItemBaseMedia;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryItemBaseMediaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryItemBaseMedia> get serializer =>
      _$LibraryItemBaseMediaSerializer();
}

class _$LibraryItemBaseMediaSerializer
    implements PrimitiveSerializer<LibraryItemBaseMedia> {
  @override
  final Iterable<Type> types = const [
    LibraryItemBaseMedia,
    _$LibraryItemBaseMedia
  ];

  @override
  final String wireName = r'LibraryItemBaseMedia';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryItemBaseMedia object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    LibraryItemBaseMedia object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  LibraryItemBaseMedia deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryItemBaseMediaBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(BookMinified),
      FullType(Podcast),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
