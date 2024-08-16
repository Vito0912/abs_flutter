//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/series.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_shelf.g.dart';

/// SeriesShelf
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [description] - A description for the series. Will be null if there is none.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [books]
/// * [inProgress] - Whether the user has started listening to the series.
/// * [hasActiveBook] - Whether the user has started listening to the series, but has not finished it.
/// * [hideFromContinueListening] - Whether the series should be hidden from the continue listening section.
/// * [bookInProgressLastUpdate] - An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated.
/// * [firstBookUnread]
@BuiltValue(instantiable: false)
abstract class SeriesShelf implements Series {
  @BuiltValueField(wireName: r'books')
  BuiltList<LibraryItemMinified>? get books;

  /// Whether the user has started listening to the series.
  @BuiltValueField(wireName: r'inProgress')
  bool? get inProgress;

  /// An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated.
  @BuiltValueField(wireName: r'bookInProgressLastUpdate')
  int? get bookInProgressLastUpdate;

  /// Whether the series should be hidden from the continue listening section.
  @BuiltValueField(wireName: r'hideFromContinueListening')
  bool? get hideFromContinueListening;

  @BuiltValueField(wireName: r'firstBookUnread')
  LibraryItemMinified? get firstBookUnread;

  /// Whether the user has started listening to the series, but has not finished it.
  @BuiltValueField(wireName: r'hasActiveBook')
  bool? get hasActiveBook;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesShelf> get serializer => _$SeriesShelfSerializer();
}

class _$SeriesShelfSerializer implements PrimitiveSerializer<SeriesShelf> {
  @override
  final Iterable<Type> types = const [SeriesShelf];

  @override
  final String wireName = r'SeriesShelf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.books != null) {
      yield r'books';
      yield serializers.serialize(
        object.books,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryItemMinified)]),
      );
    }
    if (object.inProgress != null) {
      yield r'inProgress';
      yield serializers.serialize(
        object.inProgress,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.bookInProgressLastUpdate != null) {
      yield r'bookInProgressLastUpdate';
      yield serializers.serialize(
        object.bookInProgressLastUpdate,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hideFromContinueListening != null) {
      yield r'hideFromContinueListening';
      yield serializers.serialize(
        object.hideFromContinueListening,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.firstBookUnread != null) {
      yield r'firstBookUnread';
      yield serializers.serialize(
        object.firstBookUnread,
        specifiedType: const FullType(LibraryItemMinified),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.hasActiveBook != null) {
      yield r'hasActiveBook';
      yield serializers.serialize(
        object.hasActiveBook,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  SeriesShelf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($SeriesShelf)) as $SeriesShelf;
  }
}

/// a concrete implementation of [SeriesShelf], since [SeriesShelf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SeriesShelf
    implements SeriesShelf, Built<$SeriesShelf, $SeriesShelfBuilder> {
  $SeriesShelf._();

  factory $SeriesShelf([void Function($SeriesShelfBuilder)? updates]) =
      _$$SeriesShelf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SeriesShelfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SeriesShelf> get serializer => _$$SeriesShelfSerializer();
}

class _$$SeriesShelfSerializer implements PrimitiveSerializer<$SeriesShelf> {
  @override
  final Iterable<Type> types = const [$SeriesShelf, _$$SeriesShelf];

  @override
  final String wireName = r'$SeriesShelf';

  @override
  Object serialize(
    Serializers serializers,
    $SeriesShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SeriesShelf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SeriesShelfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'books':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemMinified)]),
          ) as BuiltList<LibraryItemMinified>;
          result.books.replace(valueDes);
          break;
        case r'inProgress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.inProgress = valueDes;
          break;
        case r'bookInProgressLastUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookInProgressLastUpdate = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'hideFromContinueListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideFromContinueListening = valueDes;
          break;
        case r'firstBookUnread':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibraryItemMinified),
          ) as LibraryItemMinified;
          result.firstBookUnread.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'hasActiveBook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasActiveBook = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SeriesShelf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SeriesShelfBuilder();
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
