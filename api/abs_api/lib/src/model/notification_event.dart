//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/notification_event_defaults.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_event.g.dart';

/// NotificationEvent
///
/// Properties:
/// * [name] - The name of the notification event. The names and allowable values are defined at https://github.com/advplyr/audiobookshelf/blob/master/server/utils/notifications.js
/// * [requiresLibrary] - Whether the notification event depends on a library existing.
/// * [libraryMediaType] - The type of media of the library the notification depends on existing. Will not exist if requiresLibrary is false.
/// * [description] - The description of the notification event.
/// * [variables] - The variables of the notification event that can be used in the notification templates.
/// * [defaults]
/// * [testData] - The keys of the testData object will match the list of variables. The values will be the data used when sending a test notification.
@BuiltValue()
abstract class NotificationEvent
    implements Built<NotificationEvent, NotificationEventBuilder> {
  /// The name of the notification event. The names and allowable values are defined at https://github.com/advplyr/audiobookshelf/blob/master/server/utils/notifications.js
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Whether the notification event depends on a library existing.
  @BuiltValueField(wireName: r'requiresLibrary')
  bool? get requiresLibrary;

  /// The type of media of the library the notification depends on existing. Will not exist if requiresLibrary is false.
  @BuiltValueField(wireName: r'libraryMediaType')
  String? get libraryMediaType;

  /// The description of the notification event.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The variables of the notification event that can be used in the notification templates.
  @BuiltValueField(wireName: r'variables')
  BuiltList<String>? get variables;

  @BuiltValueField(wireName: r'defaults')
  NotificationEventDefaults? get defaults;

  /// The keys of the testData object will match the list of variables. The values will be the data used when sending a test notification.
  @BuiltValueField(wireName: r'testData')
  BuiltMap<String, String>? get testData;

  NotificationEvent._();

  factory NotificationEvent([void updates(NotificationEventBuilder b)]) =
      _$NotificationEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationEvent> get serializer =>
      _$NotificationEventSerializer();
}

class _$NotificationEventSerializer
    implements PrimitiveSerializer<NotificationEvent> {
  @override
  final Iterable<Type> types = const [NotificationEvent, _$NotificationEvent];

  @override
  final String wireName = r'NotificationEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiresLibrary != null) {
      yield r'requiresLibrary';
      yield serializers.serialize(
        object.requiresLibrary,
        specifiedType: const FullType(bool),
      );
    }
    if (object.libraryMediaType != null) {
      yield r'libraryMediaType';
      yield serializers.serialize(
        object.libraryMediaType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.defaults != null) {
      yield r'defaults';
      yield serializers.serialize(
        object.defaults,
        specifiedType: const FullType(NotificationEventDefaults),
      );
    }
    if (object.testData != null) {
      yield r'testData';
      yield serializers.serialize(
        object.testData,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationEvent object, {
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
    required NotificationEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'requiresLibrary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.requiresLibrary = valueDes;
          break;
        case r'libraryMediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.libraryMediaType = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.variables.replace(valueDes);
          break;
        case r'defaults':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationEventDefaults),
          ) as NotificationEventDefaults;
          result.defaults.replace(valueDes);
          break;
        case r'testData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.testData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationEventBuilder();
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
