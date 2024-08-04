//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/get_listening_stats200_response_items_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/playback_session.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_listening_stats200_response.g.dart';

/// GetListeningStats200Response
///
/// Properties:
/// * [totalTime] - The total time listened in seconds.
/// * [items] - A list of library items the user has listened to, keyed by their item IDs.
/// * [days] - A mapping of days to total listening times.
/// * [dayOfWeek] - A mapping of days of the week to total listening times.
/// * [today] - The time (in seconds) the user has listened to library items today.
/// * [recentSessions]
@BuiltValue()
abstract class GetListeningStats200Response
    implements
        Built<GetListeningStats200Response,
            GetListeningStats200ResponseBuilder> {
  /// The total time listened in seconds.
  @BuiltValueField(wireName: r'totalTime')
  int? get totalTime;

  /// A list of library items the user has listened to, keyed by their item IDs.
  @BuiltValueField(wireName: r'items')
  BuiltMap<String, GetListeningStats200ResponseItemsValue>? get items;

  /// A mapping of days to total listening times.
  @BuiltValueField(wireName: r'days')
  BuiltMap<String, int>? get days;

  /// A mapping of days of the week to total listening times.
  @BuiltValueField(wireName: r'dayOfWeek')
  BuiltMap<String, int>? get dayOfWeek;

  /// The time (in seconds) the user has listened to library items today.
  @BuiltValueField(wireName: r'today')
  int? get today;

  @BuiltValueField(wireName: r'recentSessions')
  BuiltList<PlaybackSession>? get recentSessions;

  GetListeningStats200Response._();

  factory GetListeningStats200Response(
          [void updates(GetListeningStats200ResponseBuilder b)]) =
      _$GetListeningStats200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetListeningStats200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetListeningStats200Response> get serializer =>
      _$GetListeningStats200ResponseSerializer();
}

class _$GetListeningStats200ResponseSerializer
    implements PrimitiveSerializer<GetListeningStats200Response> {
  @override
  final Iterable<Type> types = const [
    GetListeningStats200Response,
    _$GetListeningStats200Response
  ];

  @override
  final String wireName = r'GetListeningStats200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetListeningStats200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalTime != null) {
      yield r'totalTime';
      yield serializers.serialize(
        object.totalTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(GetListeningStats200ResponseItemsValue)
        ]),
      );
    }
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.dayOfWeek != null) {
      yield r'dayOfWeek';
      yield serializers.serialize(
        object.dayOfWeek,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.today != null) {
      yield r'today';
      yield serializers.serialize(
        object.today,
        specifiedType: const FullType(int),
      );
    }
    if (object.recentSessions != null) {
      yield r'recentSessions';
      yield serializers.serialize(
        object.recentSessions,
        specifiedType: const FullType(BuiltList, [FullType(PlaybackSession)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetListeningStats200Response object, {
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
    required GetListeningStats200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTime = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [
              FullType(String),
              FullType(GetListeningStats200ResponseItemsValue)
            ]),
          ) as BuiltMap<String, GetListeningStats200ResponseItemsValue>;
          result.items.replace(valueDes);
          break;
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.days.replace(valueDes);
          break;
        case r'dayOfWeek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.dayOfWeek.replace(valueDes);
          break;
        case r'today':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.today = valueDes;
          break;
        case r'recentSessions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PlaybackSession)]),
          ) as BuiltList<PlaybackSession>;
          result.recentSessions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetListeningStats200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetListeningStats200ResponseBuilder();
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
