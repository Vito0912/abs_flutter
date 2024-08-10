//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/series_books.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item_search_result.dart';
import 'package:abs_api/src/model/author_expanded.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_library200_response.g.dart';

/// SearchLibrary200Response
///
/// Properties:
/// * [book]
/// * [podcast] - TODO. Add podcast to libraryItemExpanded/media - try without oneOf
/// * [tags]
/// * [authors]
/// * [series]
@BuiltValue()
abstract class SearchLibrary200Response
    implements
        Built<SearchLibrary200Response, SearchLibrary200ResponseBuilder> {
  @BuiltValueField(wireName: r'book')
  BuiltList<LibraryItemSearchResult>? get book;

  /// TODO. Add podcast to libraryItemExpanded/media - try without oneOf
  @BuiltValueField(wireName: r'podcast')
  BuiltList<LibraryItemSearchResult>? get podcast;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'authors')
  BuiltList<AuthorExpanded>? get authors;

  @BuiltValueField(wireName: r'series')
  BuiltList<SeriesBooks>? get series;

  SearchLibrary200Response._();

  factory SearchLibrary200Response(
          [void updates(SearchLibrary200ResponseBuilder b)]) =
      _$SearchLibrary200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchLibrary200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchLibrary200Response> get serializer =>
      _$SearchLibrary200ResponseSerializer();
}

class _$SearchLibrary200ResponseSerializer
    implements PrimitiveSerializer<SearchLibrary200Response> {
  @override
  final Iterable<Type> types = const [
    SearchLibrary200Response,
    _$SearchLibrary200Response
  ];

  @override
  final String wireName = r'SearchLibrary200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchLibrary200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.book != null) {
      yield r'book';
      yield serializers.serialize(
        object.book,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(LibraryItemSearchResult)]),
      );
    }
    if (object.podcast != null) {
      yield r'podcast';
      yield serializers.serialize(
        object.podcast,
        specifiedType: const FullType.nullable(
            BuiltList, [FullType(LibraryItemSearchResult)]),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [FullType(AuthorExpanded)]),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(BuiltList, [FullType(SeriesBooks)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchLibrary200Response object, {
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
    required SearchLibrary200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'book':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LibraryItemSearchResult)]),
          ) as BuiltList<LibraryItemSearchResult>?;
          if (valueDes == null) continue;
          result.book.replace(valueDes);
          break;
        case r'podcast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LibraryItemSearchResult)]),
          ) as BuiltList<LibraryItemSearchResult>?;
          if (valueDes == null) continue;
          result.podcast.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'authors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AuthorExpanded)]),
          ) as BuiltList<AuthorExpanded>;
          result.authors.replace(valueDes);
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SeriesBooks)]),
          ) as BuiltList<SeriesBooks>;
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
  SearchLibrary200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchLibrary200ResponseBuilder();
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
