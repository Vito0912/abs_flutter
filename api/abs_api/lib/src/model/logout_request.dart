//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'logout_request.g.dart';

/// LogoutRequest
///
/// Properties:
/// * [socketId] - The socket ID of the user.
@BuiltValue()
abstract class LogoutRequest
    implements Built<LogoutRequest, LogoutRequestBuilder> {
  /// The socket ID of the user.
  @BuiltValueField(wireName: r'socketId')
  String? get socketId;

  LogoutRequest._();

  factory LogoutRequest([void updates(LogoutRequestBuilder b)]) =
      _$LogoutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogoutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogoutRequest> get serializer =>
      _$LogoutRequestSerializer();
}

class _$LogoutRequestSerializer implements PrimitiveSerializer<LogoutRequest> {
  @override
  final Iterable<Type> types = const [LogoutRequest, _$LogoutRequest];

  @override
  final String wireName = r'LogoutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogoutRequest object, {
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
    LogoutRequest object, {
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
    required LogoutRequestBuilder result,
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
  LogoutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogoutRequestBuilder();
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
