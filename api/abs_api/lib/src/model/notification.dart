//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/notification_event_name.dart';
import 'package:abs_api/src/model/notification_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// Notification
///
/// Properties:
/// * [id] - The ID of the notification.
/// * [libraryId] - The ID of the library. Applies to all libraries if `null`.
/// * [eventName]
/// * [urls] - The Apprise URLs to use for the notification.
/// * [titleTemplate] - The template for the notification title.
/// * [bodyTemplate] - The template for the notification body.
/// * [enabled] - Whether the notification is enabled.
/// * [type]
/// * [lastFiredAt] - The time (in ms since POSIX epoch) when the notification was last fired. Will be null if the notification has not fired.
/// * [lastAttemptFailed] - Whether the last notification attempt failed.
/// * [numConsecutiveFailedAttempts] - The number of consecutive times the notification has failed.
/// * [numTimesFired] - The number of times the notification has fired.
/// * [createdAt] - The time (in ms since POSIX epoch) when was created.
@BuiltValue()
abstract class Notification
    implements Built<Notification, NotificationBuilder> {
  /// The ID of the notification.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of the library. Applies to all libraries if `null`.
  @BuiltValueField(wireName: r'libraryId')
  String? get libraryId;

  @BuiltValueField(wireName: r'eventName')
  NotificationEventName? get eventName;
  // enum eventNameEnum {  onPodcastEpisodeDownloaded,  onTest,  };

  /// The Apprise URLs to use for the notification.
  @BuiltValueField(wireName: r'urls')
  BuiltList<String>? get urls;

  /// The template for the notification title.
  @BuiltValueField(wireName: r'titleTemplate')
  String? get titleTemplate;

  /// The template for the notification body.
  @BuiltValueField(wireName: r'bodyTemplate')
  String? get bodyTemplate;

  /// Whether the notification is enabled.
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'type')
  NotificationType? get type;
  // enum typeEnum {  info,  success,  warning,  failure,  };

  /// The time (in ms since POSIX epoch) when the notification was last fired. Will be null if the notification has not fired.
  @BuiltValueField(wireName: r'lastFiredAt')
  int? get lastFiredAt;

  /// Whether the last notification attempt failed.
  @BuiltValueField(wireName: r'lastAttemptFailed')
  bool? get lastAttemptFailed;

  /// The number of consecutive times the notification has failed.
  @BuiltValueField(wireName: r'numConsecutiveFailedAttempts')
  int? get numConsecutiveFailedAttempts;

  /// The number of times the notification has fired.
  @BuiltValueField(wireName: r'numTimesFired')
  int? get numTimesFired;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'createdAt')
  int? get createdAt;

  Notification._();

  factory Notification([void updates(NotificationBuilder b)]) = _$Notification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationBuilder b) => b
    ..enabled = false
    ..numConsecutiveFailedAttempts = 0
    ..numTimesFired = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<Notification> get serializer => _$NotificationSerializer();
}

class _$NotificationSerializer implements PrimitiveSerializer<Notification> {
  @override
  final Iterable<Type> types = const [Notification, _$Notification];

  @override
  final String wireName = r'Notification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Notification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eventName != null) {
      yield r'eventName';
      yield serializers.serialize(
        object.eventName,
        specifiedType: const FullType(NotificationEventName),
      );
    }
    if (object.urls != null) {
      yield r'urls';
      yield serializers.serialize(
        object.urls,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.titleTemplate != null) {
      yield r'titleTemplate';
      yield serializers.serialize(
        object.titleTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.bodyTemplate != null) {
      yield r'bodyTemplate';
      yield serializers.serialize(
        object.bodyTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(NotificationType),
      );
    }
    if (object.lastFiredAt != null) {
      yield r'lastFiredAt';
      yield serializers.serialize(
        object.lastFiredAt,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastAttemptFailed != null) {
      yield r'lastAttemptFailed';
      yield serializers.serialize(
        object.lastAttemptFailed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.numConsecutiveFailedAttempts != null) {
      yield r'numConsecutiveFailedAttempts';
      yield serializers.serialize(
        object.numConsecutiveFailedAttempts,
        specifiedType: const FullType(int),
      );
    }
    if (object.numTimesFired != null) {
      yield r'numTimesFired';
      yield serializers.serialize(
        object.numTimesFired,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Notification object, {
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
    required NotificationBuilder result,
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
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.libraryId = valueDes;
          break;
        case r'eventName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationEventName),
          ) as NotificationEventName;
          result.eventName = valueDes;
          break;
        case r'urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.urls.replace(valueDes);
          break;
        case r'titleTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titleTemplate = valueDes;
          break;
        case r'bodyTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bodyTemplate = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationType),
          ) as NotificationType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'lastFiredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastFiredAt = valueDes;
          break;
        case r'lastAttemptFailed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.lastAttemptFailed = valueDes;
          break;
        case r'numConsecutiveFailedAttempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numConsecutiveFailedAttempts = valueDes;
          break;
        case r'numTimesFired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numTimesFired = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Notification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationBuilder();
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
