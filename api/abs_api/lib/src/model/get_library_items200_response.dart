//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/library_item_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_library_items200_response.g.dart';

/// GetLibraryItems200Response
///
/// Properties:
/// * [results]
/// * [total] - The total number of items in the response.
/// * [limit] - The number of items to return. If 0, no items are returned.
/// * [page] - The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
/// * [sortBy] - The field to sort by from the request.
/// * [sortDesc] - Whether to sort in descending order.
/// * [filterBy] - The field to filter by from the request. TODO
/// * [mediaType]
/// * [minified] - Return minified items if true.
/// * [collapseSeries] - Whether collapse series was set in the request.
/// * [include] - The fields to include in the response. The only current option is `rssfeed`.
@BuiltValue()
abstract class GetLibraryItems200Response
    implements
        Built<GetLibraryItems200Response, GetLibraryItems200ResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<LibraryItemBase>? get results;

  /// The total number of items in the response.
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// The number of items to return. If 0, no items are returned.
  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
  @BuiltValueField(wireName: r'page')
  int? get page;

  /// The field to sort by from the request.
  @BuiltValueField(wireName: r'sortBy')
  String? get sortBy;

  /// Whether to sort in descending order.
  @BuiltValueField(wireName: r'sortDesc')
  bool? get sortDesc;

  /// The field to filter by from the request. TODO
  @BuiltValueField(wireName: r'filterBy')
  String? get filterBy;

  @BuiltValueField(wireName: r'mediaType')
  MediaType? get mediaType;
  // enum mediaTypeEnum {  book,  podcast,  };

  /// Return minified items if true.
  @BuiltValueField(wireName: r'minified')
  bool? get minified;

  /// Whether collapse series was set in the request.
  @BuiltValueField(wireName: r'collapseSeries')
  bool? get collapseSeries;

  /// The fields to include in the response. The only current option is `rssfeed`.
  @BuiltValueField(wireName: r'include')
  String? get include;

  GetLibraryItems200Response._();

  factory GetLibraryItems200Response(
          [void updates(GetLibraryItems200ResponseBuilder b)]) =
      _$GetLibraryItems200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLibraryItems200ResponseBuilder b) => b
    ..limit = 0
    ..page = 0
    ..minified = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLibraryItems200Response> get serializer =>
      _$GetLibraryItems200ResponseSerializer();
}

class _$GetLibraryItems200ResponseSerializer
    implements PrimitiveSerializer<GetLibraryItems200Response> {
  @override
  final Iterable<Type> types = const [
    GetLibraryItems200Response,
    _$GetLibraryItems200Response
  ];

  @override
  final String wireName = r'GetLibraryItems200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLibraryItems200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(LibraryItemBase)]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.sortBy != null) {
      yield r'sortBy';
      yield serializers.serialize(
        object.sortBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.sortDesc != null) {
      yield r'sortDesc';
      yield serializers.serialize(
        object.sortDesc,
        specifiedType: const FullType(bool),
      );
    }
    if (object.filterBy != null) {
      yield r'filterBy';
      yield serializers.serialize(
        object.filterBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(MediaType),
      );
    }
    if (object.minified != null) {
      yield r'minified';
      yield serializers.serialize(
        object.minified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.collapseSeries != null) {
      yield r'collapseSeries';
      yield serializers.serialize(
        object.collapseSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.include != null) {
      yield r'include';
      yield serializers.serialize(
        object.include,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLibraryItems200Response object, {
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
    required GetLibraryItems200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemBase)]),
          ) as BuiltList<LibraryItemBase>;
          result.results.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'sortBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sortBy = valueDes;
          break;
        case r'sortDesc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sortDesc = valueDes;
          break;
        case r'filterBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filterBy = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaType),
          ) as MediaType;
          result.mediaType = valueDes;
          break;
        case r'minified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.minified = valueDes;
          break;
        case r'collapseSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.collapseSeries = valueDes;
          break;
        case r'include':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.include = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLibraryItems200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLibraryItems200ResponseBuilder();
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
