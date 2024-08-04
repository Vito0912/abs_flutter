//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/book_chapter.dart';
import 'package:abs_api/src/model/ebook_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/audio_file.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_base.g.dart';

/// Base book schema
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
@BuiltValue(instantiable: false)
abstract class BookBase {
  /// TODO
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  /// The absolute path on the server of the cover file. Will be null if there is no cover.
  @BuiltValueField(wireName: r'coverPath')
  String? get coverPath;

  /// Tags applied to items.
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'audioFiles')
  BuiltList<AudioFile>? get audioFiles;

  @BuiltValueField(wireName: r'chapters')
  BuiltList<BookChapter?>? get chapters;

  /// Any parts missing from the book by track index.
  @BuiltValueField(wireName: r'missingParts')
  BuiltList<int>? get missingParts;

  @BuiltValueField(wireName: r'ebookFile')
  EbookFile? get ebookFile;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookBase> get serializer => _$BookBaseSerializer();
}

class _$BookBaseSerializer implements PrimitiveSerializer<BookBase> {
  @override
  final Iterable<Type> types = const [BookBase];

  @override
  final String wireName = r'BookBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookBase object, {
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
    if (object.missingParts != null) {
      yield r'missingParts';
      yield serializers.serialize(
        object.missingParts,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
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
    BookBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BookBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($BookBase)) as $BookBase;
  }
}

/// a concrete implementation of [BookBase], since [BookBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BookBase
    implements BookBase, Built<$BookBase, $BookBaseBuilder> {
  $BookBase._();

  factory $BookBase([void Function($BookBaseBuilder)? updates]) = _$$BookBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BookBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BookBase> get serializer => _$$BookBaseSerializer();
}

class _$$BookBaseSerializer implements PrimitiveSerializer<$BookBase> {
  @override
  final Iterable<Type> types = const [$BookBase, _$$BookBase];

  @override
  final String wireName = r'$BookBase';

  @override
  Object serialize(
    Serializers serializers,
    $BookBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(BookBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookBaseBuilder result,
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
        case r'missingParts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.missingParts.replace(valueDes);
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
  $BookBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BookBaseBuilder();
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
