//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/notification_event_name.dart';
import 'package:abs_api/src/model/notification_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_notification_request.g.dart';

/// UpdateNotificationRequest
///
/// Properties:
/// * [libraryId] - The ID of the library.
/// * [eventName]
/// * [urls] - The Apprise URLs to use for the notification.
/// * [titleTemplate] - The template for the notification title.
/// * [bodyTemplate] - The template for the notification body.
/// * [enabled] - Whether the notification is enabled.
/// * [type]
@BuiltValue()
abstract class UpdateNotificationRequest
    implements
        Built<UpdateNotificationRequest, UpdateNotificationRequestBuilder> {
  /// The ID of the library.
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

  UpdateNotificationRequest._();

  factory UpdateNotificationRequest(
          [void updates(UpdateNotificationRequestBuilder b)]) =
      _$UpdateNotificationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateNotificationRequestBuilder b) =>
      b..enabled = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateNotificationRequest> get serializer =>
      _$UpdateNotificationRequestSerializer();
}

class _$UpdateNotificationRequestSerializer
    implements PrimitiveSerializer<UpdateNotificationRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateNotificationRequest,
    _$UpdateNotificationRequest
  ];

  @override
  final String wireName = r'UpdateNotificationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateNotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateNotificationRequest object, {
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
    required UpdateNotificationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateNotificationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateNotificationRequestBuilder();
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
