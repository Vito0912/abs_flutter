//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/podcast.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_podcast_feed200_response.g.dart';

/// GetPodcastFeed200Response
///
/// Properties:
/// * [podcast]
@BuiltValue()
abstract class GetPodcastFeed200Response
    implements
        Built<GetPodcastFeed200Response, GetPodcastFeed200ResponseBuilder> {
  @BuiltValueField(wireName: r'podcast')
  Podcast? get podcast;

  GetPodcastFeed200Response._();

  factory GetPodcastFeed200Response(
          [void updates(GetPodcastFeed200ResponseBuilder b)]) =
      _$GetPodcastFeed200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPodcastFeed200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPodcastFeed200Response> get serializer =>
      _$GetPodcastFeed200ResponseSerializer();
}

class _$GetPodcastFeed200ResponseSerializer
    implements PrimitiveSerializer<GetPodcastFeed200Response> {
  @override
  final Iterable<Type> types = const [
    GetPodcastFeed200Response,
    _$GetPodcastFeed200Response
  ];

  @override
  final String wireName = r'GetPodcastFeed200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPodcastFeed200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.podcast != null) {
      yield r'podcast';
      yield serializers.serialize(
        object.podcast,
        specifiedType: const FullType(Podcast),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPodcastFeed200Response object, {
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
    required GetPodcastFeed200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'podcast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Podcast),
          ) as Podcast;
          result.podcast.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetPodcastFeed200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPodcastFeed200ResponseBuilder();
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
