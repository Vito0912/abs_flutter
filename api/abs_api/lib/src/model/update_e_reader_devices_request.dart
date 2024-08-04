//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/ereader_device_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_e_reader_devices_request.g.dart';

/// UpdateEReaderDevicesRequest
///
/// Properties:
/// * [ereaderDevices]
@BuiltValue()
abstract class UpdateEReaderDevicesRequest
    implements
        Built<UpdateEReaderDevicesRequest, UpdateEReaderDevicesRequestBuilder> {
  @BuiltValueField(wireName: r'ereaderDevices')
  BuiltList<EreaderDeviceObject>? get ereaderDevices;

  UpdateEReaderDevicesRequest._();

  factory UpdateEReaderDevicesRequest(
          [void updates(UpdateEReaderDevicesRequestBuilder b)]) =
      _$UpdateEReaderDevicesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateEReaderDevicesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateEReaderDevicesRequest> get serializer =>
      _$UpdateEReaderDevicesRequestSerializer();
}

class _$UpdateEReaderDevicesRequestSerializer
    implements PrimitiveSerializer<UpdateEReaderDevicesRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateEReaderDevicesRequest,
    _$UpdateEReaderDevicesRequest
  ];

  @override
  final String wireName = r'UpdateEReaderDevicesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateEReaderDevicesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ereaderDevices != null) {
      yield r'ereaderDevices';
      yield serializers.serialize(
        object.ereaderDevices,
        specifiedType:
            const FullType(BuiltList, [FullType(EreaderDeviceObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateEReaderDevicesRequest object, {
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
    required UpdateEReaderDevicesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ereaderDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(EreaderDeviceObject)]),
          ) as BuiltList<EreaderDeviceObject>;
          result.ereaderDevices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateEReaderDevicesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateEReaderDevicesRequestBuilder();
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
