//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout_post_request.g.dart';

/// LogoutPostRequest
///
/// Properties:
/// * [socketId] - The socket ID of the user.
@BuiltValue()
abstract class LogoutPostRequest
    implements Built<LogoutPostRequest, LogoutPostRequestBuilder> {
  /// The socket ID of the user.
  @BuiltValueField(wireName: r'socketId')
  String? get socketId;

  LogoutPostRequest._();

  factory LogoutPostRequest([void updates(LogoutPostRequestBuilder b)]) =
      _$LogoutPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogoutPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogoutPostRequest> get serializer =>
      _$LogoutPostRequestSerializer();
}

class _$LogoutPostRequestSerializer
    implements PrimitiveSerializer<LogoutPostRequest> {
  @override
  final Iterable<Type> types = const [LogoutPostRequest, _$LogoutPostRequest];

  @override
  final String wireName = r'LogoutPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogoutPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.socketId != null) {
      yield r'socketId';
      yield serializers.serialize(
        object.socketId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogoutPostRequest object, {
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
    required LogoutPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'socketId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.socketId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogoutPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogoutPostRequestBuilder();
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
