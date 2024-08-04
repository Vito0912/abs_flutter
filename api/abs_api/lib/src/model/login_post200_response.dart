//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_post200_response.g.dart';

/// LoginPost200Response
///
/// Properties:
/// * [user]
@BuiltValue()
abstract class LoginPost200Response
    implements Built<LoginPost200Response, LoginPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'user')
  User? get user;

  LoginPost200Response._();

  factory LoginPost200Response([void updates(LoginPost200ResponseBuilder b)]) =
      _$LoginPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginPost200Response> get serializer =>
      _$LoginPost200ResponseSerializer();
}

class _$LoginPost200ResponseSerializer
    implements PrimitiveSerializer<LoginPost200Response> {
  @override
  final Iterable<Type> types = const [
    LoginPost200Response,
    _$LoginPost200Response
  ];

  @override
  final String wireName = r'LoginPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginPost200Response object, {
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
    required LoginPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginPost200ResponseBuilder();
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
