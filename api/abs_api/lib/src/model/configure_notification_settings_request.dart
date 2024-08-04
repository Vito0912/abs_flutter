//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'configure_notification_settings_request.g.dart';

/// ConfigureNotificationSettingsRequest
///
/// Properties:
/// * [appriseApiUrl] - The full URL where the Apprise API to use is located.
/// * [maxFailedAttempts] - The maximum number of times a notification fails before being disabled.
/// * [maxNotificationQueue] - The maximum number of notifications in the notification queue before events are ignored.
@BuiltValue()
abstract class ConfigureNotificationSettingsRequest
    implements
        Built<ConfigureNotificationSettingsRequest,
            ConfigureNotificationSettingsRequestBuilder> {
  /// The full URL where the Apprise API to use is located.
  @BuiltValueField(wireName: r'appriseApiUrl')
  String? get appriseApiUrl;

  /// The maximum number of times a notification fails before being disabled.
  @BuiltValueField(wireName: r'maxFailedAttempts')
  int? get maxFailedAttempts;

  /// The maximum number of notifications in the notification queue before events are ignored.
  @BuiltValueField(wireName: r'maxNotificationQueue')
  int? get maxNotificationQueue;

  ConfigureNotificationSettingsRequest._();

  factory ConfigureNotificationSettingsRequest(
          [void updates(ConfigureNotificationSettingsRequestBuilder b)]) =
      _$ConfigureNotificationSettingsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfigureNotificationSettingsRequestBuilder b) =>
      b..maxFailedAttempts = 5;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfigureNotificationSettingsRequest> get serializer =>
      _$ConfigureNotificationSettingsRequestSerializer();
}

class _$ConfigureNotificationSettingsRequestSerializer
    implements PrimitiveSerializer<ConfigureNotificationSettingsRequest> {
  @override
  final Iterable<Type> types = const [
    ConfigureNotificationSettingsRequest,
    _$ConfigureNotificationSettingsRequest
  ];

  @override
  final String wireName = r'ConfigureNotificationSettingsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfigureNotificationSettingsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.appriseApiUrl != null) {
      yield r'appriseApiUrl';
      yield serializers.serialize(
        object.appriseApiUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxFailedAttempts != null) {
      yield r'maxFailedAttempts';
      yield serializers.serialize(
        object.maxFailedAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxNotificationQueue != null) {
      yield r'maxNotificationQueue';
      yield serializers.serialize(
        object.maxNotificationQueue,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfigureNotificationSettingsRequest object, {
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
    required ConfigureNotificationSettingsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'appriseApiUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appriseApiUrl = valueDes;
          break;
        case r'maxFailedAttempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxFailedAttempts = valueDes;
          break;
        case r'maxNotificationQueue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxNotificationQueue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfigureNotificationSettingsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigureNotificationSettingsRequestBuilder();
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
