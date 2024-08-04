//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/author_expanded.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_library_authors200_response.g.dart';

/// GetLibraryAuthors200Response
///
/// Properties:
/// * [authors]
@BuiltValue()
abstract class GetLibraryAuthors200Response
    implements
        Built<GetLibraryAuthors200Response,
            GetLibraryAuthors200ResponseBuilder> {
  @BuiltValueField(wireName: r'authors')
  BuiltList<AuthorExpanded>? get authors;

  GetLibraryAuthors200Response._();

  factory GetLibraryAuthors200Response(
          [void updates(GetLibraryAuthors200ResponseBuilder b)]) =
      _$GetLibraryAuthors200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLibraryAuthors200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLibraryAuthors200Response> get serializer =>
      _$GetLibraryAuthors200ResponseSerializer();
}

class _$GetLibraryAuthors200ResponseSerializer
    implements PrimitiveSerializer<GetLibraryAuthors200Response> {
  @override
  final Iterable<Type> types = const [
    GetLibraryAuthors200Response,
    _$GetLibraryAuthors200Response
  ];

  @override
  final String wireName = r'GetLibraryAuthors200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLibraryAuthors200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authors != null) {
      yield r'authors';
      yield serializers.serialize(
        object.authors,
        specifiedType: const FullType(BuiltList, [FullType(AuthorExpanded)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLibraryAuthors200Response object, {
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
    required GetLibraryAuthors200ResponseBuilder result,
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
                const FullType(BuiltList, [FullType(AuthorExpanded)]),
          ) as BuiltList<AuthorExpanded>;
          result.authors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLibraryAuthors200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLibraryAuthors200ResponseBuilder();
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
