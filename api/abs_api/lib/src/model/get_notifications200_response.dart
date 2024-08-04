//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/notification_settings.dart';
import 'package:abs_api/src/model/get_notifications200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_notifications200_response.g.dart';

/// GetNotifications200Response
///
/// Properties:
/// * [data]
/// * [settings]
@BuiltValue()
abstract class GetNotifications200Response
    implements
        Built<GetNotifications200Response, GetNotifications200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  GetNotifications200ResponseData? get data;

  @BuiltValueField(wireName: r'settings')
  NotificationSettings? get settings;

  GetNotifications200Response._();

  factory GetNotifications200Response(
          [void updates(GetNotifications200ResponseBuilder b)]) =
      _$GetNotifications200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetNotifications200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetNotifications200Response> get serializer =>
      _$GetNotifications200ResponseSerializer();
}

class _$GetNotifications200ResponseSerializer
    implements PrimitiveSerializer<GetNotifications200Response> {
  @override
  final Iterable<Type> types = const [
    GetNotifications200Response,
    _$GetNotifications200Response
  ];

  @override
  final String wireName = r'GetNotifications200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetNotifications200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(GetNotifications200ResponseData),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(NotificationSettings),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetNotifications200Response object, {
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
    required GetNotifications200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetNotifications200ResponseData),
          ) as GetNotifications200ResponseData;
          result.data.replace(valueDes);
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationSettings),
          ) as NotificationSettings;
          result.settings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetNotifications200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNotifications200ResponseBuilder();
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
