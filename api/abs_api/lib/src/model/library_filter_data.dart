//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/author_minified.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/series_num_books.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_filter_data.g.dart';

/// LibraryFilterData
///
/// Properties:
/// * [authors]
/// * [series]
/// * [tags]
/// * [genres]
/// * [narrators]
/// * [languages]
@BuiltValue()
abstract class LibraryFilterData
    implements Built<LibraryFilterData, LibraryFilterDataBuilder> {
  @BuiltValueField(wireName: r'authors')
  BuiltList<AuthorMinified>? get authors;

  @BuiltValueField(wireName: r'series')
  BuiltList<SeriesNumBooks>? get series;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'genres')
  BuiltList<String>? get genres;

  @BuiltValueField(wireName: r'narrators')
  BuiltList<String>? get narrators;

  @BuiltValueField(wireName: r'languages')
  BuiltList<String>? get languages;

  LibraryFilterData._();

  factory LibraryFilterData([void updates(LibraryFilterDataBuilder b)]) =
      _$LibraryFilterData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryFilterDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryFilterData> get serializer =>
      _$LibraryFilterDataSerializer();
}

class _$LibraryFilterDataSerializer
    implements PrimitiveSerializer<LibraryFilterData> {
  @override
  final Iterable<Type> types = const [LibraryFilterData, _$LibraryFilterData];

  @override
  final String wireName = r'LibraryFilterData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryFilterData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [FullType(AuthorMinified)]),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(BuiltList, [FullType(SeriesNumBooks)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.narrators != null) {
      yield r'narrators';
      yield serializers.serialize(
        object.narrators,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryFilterData object, {
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
    required LibraryFilterDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AuthorMinified)]),
          ) as BuiltList<AuthorMinified>;
          result.authors.replace(valueDes);
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SeriesNumBooks)]),
          ) as BuiltList<SeriesNumBooks>;
          result.series.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.genres.replace(valueDes);
          break;
        case r'narrators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.narrators.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.languages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryFilterData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryFilterDataBuilder();
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
