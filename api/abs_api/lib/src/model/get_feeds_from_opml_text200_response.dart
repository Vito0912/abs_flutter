//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/get_feeds_from_opml_text200_response_feeds_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_feeds_from_opml_text200_response.g.dart';

/// GetFeedsFromOPMLText200Response
///
/// Properties:
/// * [feeds]
@BuiltValue()
abstract class GetFeedsFromOPMLText200Response
    implements
        Built<GetFeedsFromOPMLText200Response,
            GetFeedsFromOPMLText200ResponseBuilder> {
  @BuiltValueField(wireName: r'feeds')
  BuiltList<GetFeedsFromOPMLText200ResponseFeedsInner>? get feeds;

  GetFeedsFromOPMLText200Response._();

  factory GetFeedsFromOPMLText200Response(
          [void updates(GetFeedsFromOPMLText200ResponseBuilder b)]) =
      _$GetFeedsFromOPMLText200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFeedsFromOPMLText200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFeedsFromOPMLText200Response> get serializer =>
      _$GetFeedsFromOPMLText200ResponseSerializer();
}

class _$GetFeedsFromOPMLText200ResponseSerializer
    implements PrimitiveSerializer<GetFeedsFromOPMLText200Response> {
  @override
  final Iterable<Type> types = const [
    GetFeedsFromOPMLText200Response,
    _$GetFeedsFromOPMLText200Response
  ];

  @override
  final String wireName = r'GetFeedsFromOPMLText200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFeedsFromOPMLText200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.feeds != null) {
      yield r'feeds';
      yield serializers.serialize(
        object.feeds,
        specifiedType: const FullType(
            BuiltList, [FullType(GetFeedsFromOPMLText200ResponseFeedsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFeedsFromOPMLText200Response object, {
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
    required GetFeedsFromOPMLText200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'feeds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(GetFeedsFromOPMLText200ResponseFeedsInner)]),
          ) as BuiltList<GetFeedsFromOPMLText200ResponseFeedsInner>;
          result.feeds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFeedsFromOPMLText200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFeedsFromOPMLText200ResponseBuilder();
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
