//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_num_books.g.dart';

/// A series object which includes the name and number of books in the series.
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [numBooks] - The number of books in the series.
/// * [libraryItemIds] - The IDs of the library items in the series.
@BuiltValue()
abstract class SeriesNumBooks
    implements Built<SeriesNumBooks, SeriesNumBooksBuilder> {
  /// The ID of the series.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the series.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The number of books in the series.
  @BuiltValueField(wireName: r'numBooks')
  int? get numBooks;

  /// The IDs of the library items in the series.
  @BuiltValueField(wireName: r'libraryItemIds')
  BuiltList<String>? get libraryItemIds;

  SeriesNumBooks._();

  factory SeriesNumBooks([void updates(SeriesNumBooksBuilder b)]) =
      _$SeriesNumBooks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesNumBooksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesNumBooks> get serializer =>
      _$SeriesNumBooksSerializer();
}

class _$SeriesNumBooksSerializer
    implements PrimitiveSerializer<SeriesNumBooks> {
  @override
  final Iterable<Type> types = const [SeriesNumBooks, _$SeriesNumBooks];

  @override
  final String wireName = r'SeriesNumBooks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesNumBooks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.numBooks != null) {
      yield r'numBooks';
      yield serializers.serialize(
        object.numBooks,
        specifiedType: const FullType(int),
      );
    }
    if (object.libraryItemIds != null) {
      yield r'libraryItemIds';
      yield serializers.serialize(
        object.libraryItemIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesNumBooks object, {
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
    required SeriesNumBooksBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'numBooks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numBooks = valueDes;
          break;
        case r'libraryItemIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.libraryItemIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesNumBooks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesNumBooksBuilder();
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
