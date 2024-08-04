//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/playback_session.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_listening_sessions200_response.g.dart';

/// GetListeningSessions200Response
///
/// Properties:
/// * [total] - The total number of items in the response.
/// * [numPages] - The number of pages.
/// * [itemsPerPage] - The number of items to return. If 0, no items are returned.
/// * [sessions]
@BuiltValue()
abstract class GetListeningSessions200Response
    implements
        Built<GetListeningSessions200Response,
            GetListeningSessions200ResponseBuilder> {
  /// The total number of items in the response.
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// The number of pages.
  @BuiltValueField(wireName: r'numPages')
  int? get numPages;

  /// The number of items to return. If 0, no items are returned.
  @BuiltValueField(wireName: r'itemsPerPage')
  int? get itemsPerPage;

  @BuiltValueField(wireName: r'sessions')
  BuiltList<PlaybackSession>? get sessions;

  GetListeningSessions200Response._();

  factory GetListeningSessions200Response(
          [void updates(GetListeningSessions200ResponseBuilder b)]) =
      _$GetListeningSessions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetListeningSessions200ResponseBuilder b) =>
      b..itemsPerPage = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetListeningSessions200Response> get serializer =>
      _$GetListeningSessions200ResponseSerializer();
}

class _$GetListeningSessions200ResponseSerializer
    implements PrimitiveSerializer<GetListeningSessions200Response> {
  @override
  final Iterable<Type> types = const [
    GetListeningSessions200Response,
    _$GetListeningSessions200Response
  ];

  @override
  final String wireName = r'GetListeningSessions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetListeningSessions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.numPages != null) {
      yield r'numPages';
      yield serializers.serialize(
        object.numPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.itemsPerPage != null) {
      yield r'itemsPerPage';
      yield serializers.serialize(
        object.itemsPerPage,
        specifiedType: const FullType(int),
      );
    }
    if (object.sessions != null) {
      yield r'sessions';
      yield serializers.serialize(
        object.sessions,
        specifiedType: const FullType(BuiltList, [FullType(PlaybackSession)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetListeningSessions200Response object, {
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
    required GetListeningSessions200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'numPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numPages = valueDes;
          break;
        case r'itemsPerPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itemsPerPage = valueDes;
          break;
        case r'sessions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PlaybackSession)]),
          ) as BuiltList<PlaybackSession>;
          result.sessions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetListeningSessions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetListeningSessions200ResponseBuilder();
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
