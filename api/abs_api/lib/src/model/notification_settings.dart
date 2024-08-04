//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/notification.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_settings.g.dart';

/// NotificationSettings
///
/// Properties:
/// * [id] - The ID of the notification.
/// * [appriseType] - The type of Apprise that will be used. At the moment, only api is available.
/// * [appriseApiUrl] - The full URL where the Apprise API to use is located.
/// * [notifications] - The set notifications.
/// * [maxFailedAttempts] - The maximum number of times a notification fails before being disabled.
/// * [maxNotificationQueue] - The maximum number of notifications in the notification queue before events are ignored.
/// * [notificationDelay] - The time (in ms) between notification pushes.
@BuiltValue()
abstract class NotificationSettings
    implements Built<NotificationSettings, NotificationSettingsBuilder> {
  /// The ID of the notification.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The type of Apprise that will be used. At the moment, only api is available.
  @BuiltValueField(wireName: r'appriseType')
  String? get appriseType;

  /// The full URL where the Apprise API to use is located.
  @BuiltValueField(wireName: r'appriseApiUrl')
  String? get appriseApiUrl;

  /// The set notifications.
  @BuiltValueField(wireName: r'notifications')
  BuiltList<Notification>? get notifications;

  /// The maximum number of times a notification fails before being disabled.
  @BuiltValueField(wireName: r'maxFailedAttempts')
  int? get maxFailedAttempts;

  /// The maximum number of notifications in the notification queue before events are ignored.
  @BuiltValueField(wireName: r'maxNotificationQueue')
  int? get maxNotificationQueue;

  /// The time (in ms) between notification pushes.
  @BuiltValueField(wireName: r'notificationDelay')
  int? get notificationDelay;

  NotificationSettings._();

  factory NotificationSettings([void updates(NotificationSettingsBuilder b)]) =
      _$NotificationSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationSettingsBuilder b) =>
      b..maxFailedAttempts = 5;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationSettings> get serializer =>
      _$NotificationSettingsSerializer();
}

class _$NotificationSettingsSerializer
    implements PrimitiveSerializer<NotificationSettings> {
  @override
  final Iterable<Type> types = const [
    NotificationSettings,
    _$NotificationSettings
  ];

  @override
  final String wireName = r'NotificationSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.appriseType != null) {
      yield r'appriseType';
      yield serializers.serialize(
        object.appriseType,
        specifiedType: const FullType(String),
      );
    }
    if (object.appriseApiUrl != null) {
      yield r'appriseApiUrl';
      yield serializers.serialize(
        object.appriseApiUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(BuiltList, [FullType(Notification)]),
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
    if (object.notificationDelay != null) {
      yield r'notificationDelay';
      yield serializers.serialize(
        object.notificationDelay,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationSettings object, {
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
    required NotificationSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'appriseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appriseType = valueDes;
          break;
        case r'appriseApiUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appriseApiUrl = valueDes;
          break;
        case r'notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Notification)]),
          ) as BuiltList<Notification>;
          result.notifications.replace(valueDes);
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
        case r'notificationDelay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.notificationDelay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationSettingsBuilder();
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
