//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'match_author_by_id_request.g.dart';

/// MatchAuthorByIdRequest
///
/// Properties:
/// * [q] - The name of the author to use for searching.
/// * [asin] - The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
/// * [region] - The region used to search.
@BuiltValue()
abstract class MatchAuthorByIdRequest
    implements Built<MatchAuthorByIdRequest, MatchAuthorByIdRequestBuilder> {
  /// The name of the author to use for searching.
  @BuiltValueField(wireName: r'q')
  String? get q;

  /// The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
  @BuiltValueField(wireName: r'asin')
  String? get asin;

  /// The region used to search.
  @BuiltValueField(wireName: r'region')
  String? get region;

  MatchAuthorByIdRequest._();

  factory MatchAuthorByIdRequest(
          [void updates(MatchAuthorByIdRequestBuilder b)]) =
      _$MatchAuthorByIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatchAuthorByIdRequestBuilder b) => b..region = 'us';

  @BuiltValueSerializer(custom: true)
  static Serializer<MatchAuthorByIdRequest> get serializer =>
      _$MatchAuthorByIdRequestSerializer();
}

class _$MatchAuthorByIdRequestSerializer
    implements PrimitiveSerializer<MatchAuthorByIdRequest> {
  @override
  final Iterable<Type> types = const [
    MatchAuthorByIdRequest,
    _$MatchAuthorByIdRequest
  ];

  @override
  final String wireName = r'MatchAuthorByIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatchAuthorByIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.q != null) {
      yield r'q';
      yield serializers.serialize(
        object.q,
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
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatchAuthorByIdRequest object, {
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
    required MatchAuthorByIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'q':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.q = valueDes;
          break;
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MatchAuthorByIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatchAuthorByIdRequestBuilder();
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
