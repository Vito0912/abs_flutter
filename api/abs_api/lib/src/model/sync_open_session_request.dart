//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_open_session_request.g.dart';

/// SyncOpenSessionRequest
///
/// Properties:
/// * [id] - The playback session identifier.
/// * [currentTime] - The total length (in seconds) of the item or file.
/// * [timeListened] - The total length (in seconds) of the item or file.
/// * [duration] - The total length (in seconds) of the item or file.
@BuiltValue()
abstract class SyncOpenSessionRequest
    implements Built<SyncOpenSessionRequest, SyncOpenSessionRequestBuilder> {
  /// The playback session identifier.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'currentTime')
  num? get currentTime;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'timeListened')
  num? get timeListened;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  SyncOpenSessionRequest._();

  factory SyncOpenSessionRequest(
          [void updates(SyncOpenSessionRequestBuilder b)]) =
      _$SyncOpenSessionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SyncOpenSessionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SyncOpenSessionRequest> get serializer =>
      _$SyncOpenSessionRequestSerializer();
}

class _$SyncOpenSessionRequestSerializer
    implements PrimitiveSerializer<SyncOpenSessionRequest> {
  @override
  final Iterable<Type> types = const [
    SyncOpenSessionRequest,
    _$SyncOpenSessionRequest
  ];

  @override
  final String wireName = r'SyncOpenSessionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SyncOpenSessionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.currentTime != null) {
      yield r'currentTime';
      yield serializers.serialize(
        object.currentTime,
        specifiedType: const FullType(num),
      );
    }
    if (object.timeListened != null) {
      yield r'timeListened';
      yield serializers.serialize(
        object.timeListened,
        specifiedType: const FullType(num),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SyncOpenSessionRequest object, {
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
    required SyncOpenSessionRequestBuilder result,
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
        case r'currentTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.currentTime = valueDes;
          break;
        case r'timeListened':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.timeListened = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SyncOpenSessionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SyncOpenSessionRequestBuilder();
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
