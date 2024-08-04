//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/podcast_episode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_new_episodes200_response.g.dart';

/// CheckNewEpisodes200Response
///
/// Properties:
/// * [episodes]
@BuiltValue()
abstract class CheckNewEpisodes200Response
    implements
        Built<CheckNewEpisodes200Response, CheckNewEpisodes200ResponseBuilder> {
  @BuiltValueField(wireName: r'episodes')
  BuiltList<PodcastEpisode>? get episodes;

  CheckNewEpisodes200Response._();

  factory CheckNewEpisodes200Response(
          [void updates(CheckNewEpisodes200ResponseBuilder b)]) =
      _$CheckNewEpisodes200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckNewEpisodes200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckNewEpisodes200Response> get serializer =>
      _$CheckNewEpisodes200ResponseSerializer();
}

class _$CheckNewEpisodes200ResponseSerializer
    implements PrimitiveSerializer<CheckNewEpisodes200Response> {
  @override
  final Iterable<Type> types = const [
    CheckNewEpisodes200Response,
    _$CheckNewEpisodes200Response
  ];

  @override
  final String wireName = r'CheckNewEpisodes200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckNewEpisodes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.episodes != null) {
      yield r'episodes';
      yield serializers.serialize(
        object.episodes,
        specifiedType: const FullType(BuiltList, [FullType(PodcastEpisode)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckNewEpisodes200Response object, {
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
    required CheckNewEpisodes200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'episodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PodcastEpisode)]),
          ) as BuiltList<PodcastEpisode>;
          result.episodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckNewEpisodes200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckNewEpisodes200ResponseBuilder();
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
