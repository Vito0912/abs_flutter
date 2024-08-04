//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/notification_settings.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_notification200_response.g.dart';

/// CreateNotification200Response
///
/// Properties:
/// * [settings]
@BuiltValue()
abstract class CreateNotification200Response
    implements
        Built<CreateNotification200Response,
            CreateNotification200ResponseBuilder> {
  @BuiltValueField(wireName: r'settings')
  NotificationSettings? get settings;

  CreateNotification200Response._();

  factory CreateNotification200Response(
          [void updates(CreateNotification200ResponseBuilder b)]) =
      _$CreateNotification200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateNotification200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateNotification200Response> get serializer =>
      _$CreateNotification200ResponseSerializer();
}

class _$CreateNotification200ResponseSerializer
    implements PrimitiveSerializer<CreateNotification200Response> {
  @override
  final Iterable<Type> types = const [
    CreateNotification200Response,
    _$CreateNotification200Response
  ];

  @override
  final String wireName = r'CreateNotification200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateNotification200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    CreateNotification200Response object, {
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
    required CreateNotification200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  CreateNotification200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNotification200ResponseBuilder();
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
