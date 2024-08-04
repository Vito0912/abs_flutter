//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_chapter.g.dart';

/// A book chapter. Includes the title and timestamps.
///
/// Properties:
/// * [id] - The ID of the book chapter.
/// * [start] - When in the book (in seconds) the chapter starts.
/// * [end] - When in the book (in seconds) the chapter ends.
/// * [title] - The title of the chapter.
@BuiltValue()
abstract class BookChapter implements Built<BookChapter, BookChapterBuilder> {
  /// The ID of the book chapter.
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// When in the book (in seconds) the chapter starts.
  @BuiltValueField(wireName: r'start')
  num? get start;

  /// When in the book (in seconds) the chapter ends.
  @BuiltValueField(wireName: r'end')
  num? get end;

  /// The title of the chapter.
  @BuiltValueField(wireName: r'title')
  String? get title;

  BookChapter._();

  factory BookChapter([void updates(BookChapterBuilder b)]) = _$BookChapter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookChapterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookChapter> get serializer => _$BookChapterSerializer();
}

class _$BookChapterSerializer implements PrimitiveSerializer<BookChapter> {
  @override
  final Iterable<Type> types = const [BookChapter, _$BookChapter];

  @override
  final String wireName = r'BookChapter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookChapter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(num),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(num),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookChapter object, {
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
    required BookChapterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.end = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookChapter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookChapterBuilder();
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
