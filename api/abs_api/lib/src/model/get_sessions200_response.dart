//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_item_base.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/playback_session.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_sessions200_response.g.dart';

/// GetSessions200Response
///
/// Properties:
/// * [results]
/// * [total] - The total number of items in the response.
/// * [itemsPerPage] - The number of items to return. If 0, no items are returned.
/// * [numPages] - The number of pages.
/// * [userFilter] - If provided, the `user` parameter.
/// * [sessions]
@BuiltValue()
abstract class GetSessions200Response
    implements Built<GetSessions200Response, GetSessions200ResponseBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<LibraryItemBase>? get results;

  /// The total number of items in the response.
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// The number of items to return. If 0, no items are returned.
  @BuiltValueField(wireName: r'itemsPerPage')
  int? get itemsPerPage;

  /// The number of pages.
  @BuiltValueField(wireName: r'numPages')
  int? get numPages;

  /// If provided, the `user` parameter.
  @BuiltValueField(wireName: r'userFilter')
  JsonObject? get userFilter;

  @BuiltValueField(wireName: r'sessions')
  BuiltList<PlaybackSession>? get sessions;

  GetSessions200Response._();

  factory GetSessions200Response(
          [void updates(GetSessions200ResponseBuilder b)]) =
      _$GetSessions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSessions200ResponseBuilder b) => b..itemsPerPage = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSessions200Response> get serializer =>
      _$GetSessions200ResponseSerializer();
}

class _$GetSessions200ResponseSerializer
    implements PrimitiveSerializer<GetSessions200Response> {
  @override
  final Iterable<Type> types = const [
    GetSessions200Response,
    _$GetSessions200Response
  ];

  @override
  final String wireName = r'GetSessions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSessions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.results != null) {
      yield r'results';
      yield serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, [FullType(LibraryItemBase)]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
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
    if (object.numPages != null) {
      yield r'numPages';
      yield serializers.serialize(
        object.numPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.userFilter != null) {
      yield r'userFilter';
      yield serializers.serialize(
        object.userFilter,
        specifiedType: const FullType.nullable(JsonObject),
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
    GetSessions200Response object, {
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
    required GetSessions200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemBase)]),
          ) as BuiltList<LibraryItemBase>;
          result.results.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'itemsPerPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itemsPerPage = valueDes;
          break;
        case r'numPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numPages = valueDes;
          break;
        case r'userFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.userFilter = valueDes;
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
  GetSessions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSessions200ResponseBuilder();
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
