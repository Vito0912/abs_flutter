//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout200_response.g.dart';

/// Logout200Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class Logout200Response
    implements Built<Logout200Response, Logout200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  Logout200Response._();

  factory Logout200Response([void updates(Logout200ResponseBuilder b)]) =
      _$Logout200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Logout200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Logout200Response> get serializer =>
      _$Logout200ResponseSerializer();
}

class _$Logout200ResponseSerializer
    implements PrimitiveSerializer<Logout200Response> {
  @override
  final Iterable<Type> types = const [Logout200Response, _$Logout200Response];

  @override
  final String wireName = r'Logout200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Logout200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Logout200Response object, {
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
    required Logout200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Logout200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Logout200ResponseBuilder();
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
