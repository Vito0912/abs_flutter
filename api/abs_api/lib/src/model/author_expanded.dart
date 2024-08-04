//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/author_series.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/author.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author_expanded.g.dart';

/// The author schema with the total number of books in the library.
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
/// * [numBooks] - The number of books associated with the author in the library.
@BuiltValue()
abstract class AuthorExpanded
    implements Author, Built<AuthorExpanded, AuthorExpandedBuilder> {
  /// The number of books associated with the author in the library.
  @BuiltValueField(wireName: r'numBooks')
  int? get numBooks;

  AuthorExpanded._();

  factory AuthorExpanded([void updates(AuthorExpandedBuilder b)]) =
      _$AuthorExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorExpanded> get serializer =>
      _$AuthorExpandedSerializer();
}

class _$AuthorExpandedSerializer
    implements PrimitiveSerializer<AuthorExpanded> {
  @override
  final Iterable<Type> types = const [AuthorExpanded, _$AuthorExpanded];

  @override
  final String wireName = r'AuthorExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.numBooks != null) {
      yield r'numBooks';
      yield serializers.serialize(
        object.numBooks,
        specifiedType: const FullType(int),
      );
    }
    if (object.imagePath != null) {
      yield r'imagePath';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType.nullable(String),
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
    if (object.asin != null) {
      yield r'asin';
      yield serializers.serialize(
        object.asin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
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
    AuthorExpanded object, {
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
    required AuthorExpandedBuilder result,
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
        case r'numBooks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numBooks = valueDes;
          break;
        case r'imagePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
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
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
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
  AuthorExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorExpandedBuilder();
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
