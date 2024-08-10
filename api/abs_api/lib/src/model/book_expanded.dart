//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/audio_track.dart';
import 'package:abs_api/src/model/book_chapter.dart';
import 'package:abs_api/src/model/ebook_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/book_metadata_expanded.dart';
import 'package:abs_api/src/model/audio_file.dart';
import 'package:abs_api/src/model/book_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_expanded.g.dart';

/// BookExpanded
///
/// Properties:
/// * [id] - TODO
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [coverPath] - The absolute path on the server of the cover file. Will be null if there is no cover.
/// * [tags] - Tags applied to items.
/// * [audioFiles]
/// * [chapters]
/// * [missingParts] - Any parts missing from the book by track index.
/// * [ebookFile]
/// * [duration] - The total length (in seconds) of the item or file.
/// * [size] - The total size (in bytes) of the item or file.
/// * [tracks]
/// * [metadata]
@BuiltValue()
abstract class BookExpanded
    implements BookBase, Built<BookExpanded, BookExpandedBuilder> {
  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  @BuiltValueField(wireName: r'metadata')
  BookMetadataExpanded? get metadata;

  /// The total size (in bytes) of the item or file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'tracks')
  BuiltList<AudioTrack>? get tracks;

  BookExpanded._();

  factory BookExpanded([void updates(BookExpandedBuilder b)]) = _$BookExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookExpanded> get serializer => _$BookExpandedSerializer();
}

class _$BookExpandedSerializer implements PrimitiveSerializer<BookExpanded> {
  @override
  final Iterable<Type> types = const [BookExpanded, _$BookExpanded];

  @override
  final String wireName = r'BookExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(BookMetadataExpanded),
      );
    }
    if (object.coverPath != null) {
      yield r'coverPath';
      yield serializers.serialize(
        object.coverPath,
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
    if (object.audioFiles != null) {
      yield r'audioFiles';
      yield serializers.serialize(
        object.audioFiles,
        specifiedType: const FullType(BuiltList, [FullType(AudioFile)]),
      );
    }
    if (object.chapters != null) {
      yield r'chapters';
      yield serializers.serialize(
        object.chapters,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType.nullable(BookChapter)]),
      );
    }
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.missingParts != null) {
      yield r'missingParts';
      yield serializers.serialize(
        object.missingParts,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType(BuiltList, [FullType(AudioTrack)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.ebookFile != null) {
      yield r'ebookFile';
      yield serializers.serialize(
        object.ebookFile,
        specifiedType: const FullType(EbookFile),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookExpanded object, {
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
    required BookExpandedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BookMetadataExpanded),
          ) as BookMetadataExpanded;
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'audioFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AudioFile)]),
          ) as BuiltList<AudioFile>;
          result.audioFiles.replace(valueDes);
          break;
        case r'chapters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType.nullable(BookChapter)]),
          ) as BuiltList<BookChapter?>?;
          if (valueDes == null) continue;
          result.chapters.replace(valueDes);
          break;
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'missingParts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.missingParts.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AudioTrack)]),
          ) as BuiltList<AudioTrack>;
          result.tracks.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'ebookFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EbookFile),
          ) as EbookFile;
          result.ebookFile.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookExpandedBuilder();
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
