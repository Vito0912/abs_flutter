//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/author_series.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author.g.dart';

/// An author object which includes a description and image path. The library items and series associated with the author are optionally included.
///
/// Properties:
/// * [id] - The ID of the author.
/// * [asin] - The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
/// * [name] - The name of the author.
/// * [description] - The new description of the author.
/// * [imagePath] - The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [libraryItems] - The items associated with the author
/// * [series] - The series associated with the author
@BuiltValue(instantiable: false)
abstract class Author {
  /// The ID of the author.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
  @BuiltValueField(wireName: r'asin')
  String? get asin;

  /// The name of the author.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The new description of the author.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
  @BuiltValueField(wireName: r'imagePath')
  String? get imagePath;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  /// The items associated with the author
  @BuiltValueField(wireName: r'libraryItems')
  BuiltList<LibraryItemMinified>? get libraryItems;

  /// The series associated with the author
  @BuiltValueField(wireName: r'series')
  BuiltList<AuthorSeries>? get series;

  @BuiltValueSerializer(custom: true)
  static Serializer<Author> get serializer => _$AuthorSerializer();
}

class _$AuthorSerializer implements PrimitiveSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author];

  @override
  final String wireName = r'Author';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Author object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.asin != null) {
      yield r'asin';
      yield serializers.serialize(
        object.asin,
        specifiedType: const FullType.nullable(String),
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
    if (object.imagePath != null) {
      yield r'imagePath';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.libraryItems != null) {
      yield r'libraryItems';
      yield serializers.serialize(
        object.libraryItems,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryItemMinified)]),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(BuiltList, [FullType(AuthorSeries)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Author object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  Author deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Author))
        as $Author;
  }
}

/// a concrete implementation of [Author], since [Author] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Author implements Author, Built<$Author, $AuthorBuilder> {
  $Author._();

  factory $Author([void Function($AuthorBuilder)? updates]) = _$$Author;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AuthorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Author> get serializer => _$$AuthorSerializer();
}

class _$$AuthorSerializer implements PrimitiveSerializer<$Author> {
  @override
  final Iterable<Type> types = const [$Author, _$$Author];

  @override
  final String wireName = r'$Author';

  @override
  Object serialize(
    Serializers serializers,
    $Author object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Author))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthorBuilder result,
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
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
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
        case r'imagePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        case r'libraryItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemMinified)]),
          ) as BuiltList<LibraryItemMinified>;
          result.libraryItems.replace(valueDes);
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AuthorSeries)]),
          ) as BuiltList<AuthorSeries>;
          result.series.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Author deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AuthorBuilder();
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
