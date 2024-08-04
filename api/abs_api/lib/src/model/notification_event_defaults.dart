//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_event_defaults.g.dart';

/// NotificationEventDefaults
///
/// Properties:
/// * [title] - The default title template for notifications using the notification event.
/// * [body] - The default body template for notifications using the notification event.
@BuiltValue()
abstract class NotificationEventDefaults
    implements
        Built<NotificationEventDefaults, NotificationEventDefaultsBuilder> {
  /// The default title template for notifications using the notification event.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The default body template for notifications using the notification event.
  @BuiltValueField(wireName: r'body')
  String? get body;

  NotificationEventDefaults._();

  factory NotificationEventDefaults(
          [void updates(NotificationEventDefaultsBuilder b)]) =
      _$NotificationEventDefaults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationEventDefaultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationEventDefaults> get serializer =>
      _$NotificationEventDefaultsSerializer();
}

class _$NotificationEventDefaultsSerializer
    implements PrimitiveSerializer<NotificationEventDefaults> {
  @override
  final Iterable<Type> types = const [
    NotificationEventDefaults,
    _$NotificationEventDefaults
  ];

  @override
  final String wireName = r'NotificationEventDefaults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationEventDefaults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationEventDefaults object, {
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
    required NotificationEventDefaultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationEventDefaults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationEventDefaultsBuilder();
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
