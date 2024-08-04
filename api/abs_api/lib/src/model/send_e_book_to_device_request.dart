//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_e_book_to_device_request.g.dart';

/// SendEBookToDeviceRequest
///
/// Properties:
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [deviceName] - The name of the e-reader device.
@BuiltValue()
abstract class SendEBookToDeviceRequest
    implements
        Built<SendEBookToDeviceRequest, SendEBookToDeviceRequestBuilder> {
  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  /// The name of the e-reader device.
  @BuiltValueField(wireName: r'deviceName')
  String? get deviceName;

  SendEBookToDeviceRequest._();

  factory SendEBookToDeviceRequest(
          [void updates(SendEBookToDeviceRequestBuilder b)]) =
      _$SendEBookToDeviceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendEBookToDeviceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendEBookToDeviceRequest> get serializer =>
      _$SendEBookToDeviceRequestSerializer();
}

class _$SendEBookToDeviceRequestSerializer
    implements PrimitiveSerializer<SendEBookToDeviceRequest> {
  @override
  final Iterable<Type> types = const [
    SendEBookToDeviceRequest,
    _$SendEBookToDeviceRequest
  ];

  @override
  final String wireName = r'SendEBookToDeviceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendEBookToDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceName != null) {
      yield r'deviceName';
      yield serializers.serialize(
        object.deviceName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendEBookToDeviceRequest object, {
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
    required SendEBookToDeviceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'deviceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendEBookToDeviceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendEBookToDeviceRequestBuilder();
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
