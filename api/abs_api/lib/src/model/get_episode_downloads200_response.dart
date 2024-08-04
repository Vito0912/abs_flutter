//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/podcast_episode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_episode_downloads200_response.g.dart';

/// GetEpisodeDownloads200Response
///
/// Properties:
/// * [downloads]
@BuiltValue()
abstract class GetEpisodeDownloads200Response
    implements
        Built<GetEpisodeDownloads200Response,
            GetEpisodeDownloads200ResponseBuilder> {
  @BuiltValueField(wireName: r'downloads')
  BuiltList<PodcastEpisode>? get downloads;

  GetEpisodeDownloads200Response._();

  factory GetEpisodeDownloads200Response(
          [void updates(GetEpisodeDownloads200ResponseBuilder b)]) =
      _$GetEpisodeDownloads200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetEpisodeDownloads200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetEpisodeDownloads200Response> get serializer =>
      _$GetEpisodeDownloads200ResponseSerializer();
}

class _$GetEpisodeDownloads200ResponseSerializer
    implements PrimitiveSerializer<GetEpisodeDownloads200Response> {
  @override
  final Iterable<Type> types = const [
    GetEpisodeDownloads200Response,
    _$GetEpisodeDownloads200Response
  ];

  @override
  final String wireName = r'GetEpisodeDownloads200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetEpisodeDownloads200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.downloads != null) {
      yield r'downloads';
      yield serializers.serialize(
        object.downloads,
        specifiedType: const FullType(BuiltList, [FullType(PodcastEpisode)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetEpisodeDownloads200Response object, {
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
    required GetEpisodeDownloads200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'downloads':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(PodcastEpisode)]),
          ) as BuiltList<PodcastEpisode>;
          result.downloads.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetEpisodeDownloads200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEpisodeDownloads200ResponseBuilder();
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
