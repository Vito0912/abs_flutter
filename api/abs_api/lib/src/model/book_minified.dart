//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/book_metadata_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_minified.g.dart';

/// Minified book schema. Does not depend on `bookBase` because there's pretty much no overlap.
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
abstract class BookMinified
    implements Built<BookMinified, BookMinifiedBuilder> {
  @BuiltValueField(wireName: r'metadata')
  BookMetadataMinified? get metadata;

  /// The absolute path on the server of the cover file. Will be null if there is no cover.
  @BuiltValueField(wireName: r'coverPath')
  String? get coverPath;

  /// Tags applied to items.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// The number of tracks the book's audio files have.
  @BuiltValueField(wireName: r'numTracks')
  int? get numTracks;

  /// The number of audio files the book has.
  @BuiltValueField(wireName: r'numAudioFiles')
  int? get numAudioFiles;

  /// The number of chapters the book has.
  @BuiltValueField(wireName: r'numChapters')
  int? get numChapters;

  /// The total number of missing parts the book has.
  @BuiltValueField(wireName: r'numMissingParts')
  int? get numMissingParts;

  /// The number of invalid audio files the book has.
  @BuiltValueField(wireName: r'numInvalidAudioFiles')
  int? get numInvalidAudioFiles;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// The total size (in bytes) of the item or file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// The format of ebook of the book. Will be null if the book is an audiobook.
  @BuiltValueField(wireName: r'ebookFormat')
  String? get ebookFormat;

  BookMinified._();

  factory BookMinified([void updates(BookMinifiedBuilder b)]) = _$BookMinified;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookMinifiedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookMinified> get serializer => _$BookMinifiedSerializer();
}

class _$BookMinifiedSerializer implements PrimitiveSerializer<BookMinified> {
  @override
  final Iterable<Type> types = const [BookMinified, _$BookMinified];

  @override
  final String wireName = r'BookMinified';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookMinified object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(BookMetadataMinified),
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
    if (object.numTracks != null) {
      yield r'numTracks';
      yield serializers.serialize(
        object.numTracks,
        specifiedType: const FullType(int),
      );
    }
    if (object.numAudioFiles != null) {
      yield r'numAudioFiles';
      yield serializers.serialize(
        object.numAudioFiles,
        specifiedType: const FullType(int),
      );
    }
    if (object.numChapters != null) {
      yield r'numChapters';
      yield serializers.serialize(
        object.numChapters,
        specifiedType: const FullType(int),
      );
    }
    if (object.numMissingParts != null) {
      yield r'numMissingParts';
      yield serializers.serialize(
        object.numMissingParts,
        specifiedType: const FullType(int),
      );
    }
    if (object.numInvalidAudioFiles != null) {
      yield r'numInvalidAudioFiles';
      yield serializers.serialize(
        object.numInvalidAudioFiles,
        specifiedType: const FullType(int),
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
    if (object.ebookFormat != null) {
      yield r'ebookFormat';
      yield serializers.serialize(
        object.ebookFormat,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookMinified object, {
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
    required BookMinifiedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookMetadataMinified),
          ) as BookMetadataMinified;
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
        case r'numTracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numTracks = valueDes;
          break;
        case r'numAudioFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numAudioFiles = valueDes;
          break;
        case r'numChapters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numChapters = valueDes;
          break;
        case r'numMissingParts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numMissingParts = valueDes;
          break;
        case r'numInvalidAudioFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numInvalidAudioFiles = valueDes;
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
        case r'ebookFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ebookFormat = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookMinified deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookMinifiedBuilder();
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
