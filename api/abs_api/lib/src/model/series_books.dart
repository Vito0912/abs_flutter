//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item_sequence.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_books.g.dart';

/// A series object which includes the name and books in the series.
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [nameIgnorePrefix] - The name of the series with any prefix moved to the end.
/// * [nameIgnorePrefixSort] - The name of the series with any prefix removed.
/// * [type] - Will always be `series`.
/// * [books] - The library items that contain the books in the series. A sequence attribute that denotes the position in the series the book is in, is tacked on.
/// * [totalDuration] - The combined duration (in seconds) of all books in the series.
@BuiltValue()
abstract class SeriesBooks implements Built<SeriesBooks, SeriesBooksBuilder> {
  /// The ID of the series.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the series.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The name of the series with any prefix moved to the end.
  @BuiltValueField(wireName: r'nameIgnorePrefix')
  String? get nameIgnorePrefix;

  /// The name of the series with any prefix removed.
  @BuiltValueField(wireName: r'nameIgnorePrefixSort')
  String? get nameIgnorePrefixSort;

  /// Will always be `series`.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The library items that contain the books in the series. A sequence attribute that denotes the position in the series the book is in, is tacked on.
  @BuiltValueField(wireName: r'books')
  BuiltList<LibraryItemSequence>? get books;

  /// The combined duration (in seconds) of all books in the series.
  @BuiltValueField(wireName: r'totalDuration')
  num? get totalDuration;

  SeriesBooks._();

  factory SeriesBooks([void updates(SeriesBooksBuilder b)]) = _$SeriesBooks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesBooksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesBooks> get serializer => _$SeriesBooksSerializer();
}

class _$SeriesBooksSerializer implements PrimitiveSerializer<SeriesBooks> {
  @override
  final Iterable<Type> types = const [SeriesBooks, _$SeriesBooks];

  @override
  final String wireName = r'SeriesBooks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesBooks object, {
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
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.nameIgnorePrefix != null) {
      yield r'nameIgnorePrefix';
      yield serializers.serialize(
        object.nameIgnorePrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.nameIgnorePrefixSort != null) {
      yield r'nameIgnorePrefixSort';
      yield serializers.serialize(
        object.nameIgnorePrefixSort,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.books != null) {
      yield r'books';
      yield serializers.serialize(
        object.books,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryItemSequence)]),
      );
    }
    if (object.totalDuration != null) {
      yield r'totalDuration';
      yield serializers.serialize(
        object.totalDuration,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesBooks object, {
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
    required SeriesBooksBuilder result,
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
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'nameIgnorePrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameIgnorePrefix = valueDes;
          break;
        case r'nameIgnorePrefixSort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nameIgnorePrefixSort = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'books':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemSequence)]),
          ) as BuiltList<LibraryItemSequence>;
          result.books.replace(valueDes);
          break;
        case r'totalDuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalDuration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesBooks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesBooksBuilder();
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
