//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_shelf_entities_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_shelf.g.dart';

/// A library shelf
///
/// Properties:
/// * [id] - The ID (Name) of the shelf.
/// * [label] - The label of the shelf.
/// * [labelStringKey] - The localization key for the label.
/// * [type] - The type of items the shelf contains.
/// * [category] - The category of the shelf.
/// * [entities] - TODO! I use allOf, because of my programming language , buts a oneOf. It still works with allOf but you will have entries that are not always available.
@BuiltValue()
abstract class LibraryShelf
    implements Built<LibraryShelf, LibraryShelfBuilder> {
  /// The ID (Name) of the shelf.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The label of the shelf.
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// The localization key for the label.
  @BuiltValueField(wireName: r'labelStringKey')
  String? get labelStringKey;

  /// The type of items the shelf contains.
  @BuiltValueField(wireName: r'type')
  LibraryShelfTypeEnum? get type;
  // enum typeEnum {  book,  podcast,  series,  authors,  episode,  };

  /// The category of the shelf.
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// TODO! I use allOf, because of my programming language , buts a oneOf. It still works with allOf but you will have entries that are not always available.
  @BuiltValueField(wireName: r'entities')
  BuiltList<LibraryShelfEntitiesInner>? get entities;

  LibraryShelf._();

  factory LibraryShelf([void updates(LibraryShelfBuilder b)]) = _$LibraryShelf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryShelfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryShelf> get serializer => _$LibraryShelfSerializer();
}

class _$LibraryShelfSerializer implements PrimitiveSerializer<LibraryShelf> {
  @override
  final Iterable<Type> types = const [LibraryShelf, _$LibraryShelf];

  @override
  final String wireName = r'LibraryShelf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.labelStringKey != null) {
      yield r'labelStringKey';
      yield serializers.serialize(
        object.labelStringKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(LibraryShelfTypeEnum),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.entities != null) {
      yield r'entities';
      yield serializers.serialize(
        object.entities,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryShelfEntitiesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryShelf object, {
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
    required LibraryShelfBuilder result,
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
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'labelStringKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.labelStringKey = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibraryShelfTypeEnum),
          ) as LibraryShelfTypeEnum;
          result.type = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(LibraryShelfEntitiesInner)]),
          ) as BuiltList<LibraryShelfEntitiesInner>;
          result.entities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryShelf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryShelfBuilder();
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

class LibraryShelfTypeEnum extends EnumClass {
  /// The type of items the shelf contains.
  @BuiltValueEnumConst(wireName: r'book')
  static const LibraryShelfTypeEnum book = _$libraryShelfTypeEnum_book;

  /// The type of items the shelf contains.
  @BuiltValueEnumConst(wireName: r'podcast')
  static const LibraryShelfTypeEnum podcast = _$libraryShelfTypeEnum_podcast;

  /// The type of items the shelf contains.
  @BuiltValueEnumConst(wireName: r'series')
  static const LibraryShelfTypeEnum series = _$libraryShelfTypeEnum_series;

  /// The type of items the shelf contains.
  @BuiltValueEnumConst(wireName: r'authors')
  static const LibraryShelfTypeEnum authors = _$libraryShelfTypeEnum_authors;

  /// The type of items the shelf contains.
  @BuiltValueEnumConst(wireName: r'episode', fallback: true)
  static const LibraryShelfTypeEnum episode = _$libraryShelfTypeEnum_episode;

  static Serializer<LibraryShelfTypeEnum> get serializer =>
      _$libraryShelfTypeEnumSerializer;

  const LibraryShelfTypeEnum._(String name) : super(name);

  static BuiltSet<LibraryShelfTypeEnum> get values =>
      _$libraryShelfTypeEnumValues;
  static LibraryShelfTypeEnum valueOf(String name) =>
      _$libraryShelfTypeEnumValueOf(name);
}
