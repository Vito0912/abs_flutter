//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout_post200_response.g.dart';

/// LogoutPost200Response
///
/// Properties:
/// * [message]
@BuiltValue()
abstract class LogoutPost200Response
    implements Built<LogoutPost200Response, LogoutPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  LogoutPost200Response._();

  factory LogoutPost200Response(
      [void updates(LogoutPost200ResponseBuilder b)]) = _$LogoutPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogoutPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogoutPost200Response> get serializer =>
      _$LogoutPost200ResponseSerializer();
}

class _$LogoutPost200ResponseSerializer
    implements PrimitiveSerializer<LogoutPost200Response> {
  @override
  final Iterable<Type> types = const [
    LogoutPost200Response,
    _$LogoutPost200Response
  ];

  @override
  final String wireName = r'LogoutPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogoutPost200Response object, {
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
    LogoutPost200Response object, {
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
    required LogoutPost200ResponseBuilder result,
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
  LogoutPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogoutPost200ResponseBuilder();
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
