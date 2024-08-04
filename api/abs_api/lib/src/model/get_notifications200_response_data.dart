//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/notification_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_notifications200_response_data.g.dart';

/// GetNotifications200ResponseData
///
/// Properties:
/// * [events]
@BuiltValue()
abstract class GetNotifications200ResponseData
    implements
        Built<GetNotifications200ResponseData,
            GetNotifications200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'events')
  BuiltList<NotificationEvent>? get events;

  GetNotifications200ResponseData._();

  factory GetNotifications200ResponseData(
          [void updates(GetNotifications200ResponseDataBuilder b)]) =
      _$GetNotifications200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNotifications200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNotifications200ResponseData> get serializer =>
      _$GetNotifications200ResponseDataSerializer();
}

class _$GetNotifications200ResponseDataSerializer
    implements PrimitiveSerializer<GetNotifications200ResponseData> {
  @override
  final Iterable<Type> types = const [
    GetNotifications200ResponseData,
    _$GetNotifications200ResponseData
  ];

  @override
  final String wireName = r'GetNotifications200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNotifications200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(BuiltList, [FullType(NotificationEvent)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetNotifications200ResponseData object, {
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
    required GetNotifications200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NotificationEvent)]),
          ) as BuiltList<NotificationEvent>;
          result.events.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetNotifications200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNotifications200ResponseDataBuilder();
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
