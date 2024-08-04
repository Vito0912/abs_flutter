//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_podcast_feed_request.g.dart';

/// GetPodcastFeedRequest
///
/// Properties:
/// * [rssFeed] - The RSS feed URL of the podcast
@BuiltValue()
abstract class GetPodcastFeedRequest
    implements Built<GetPodcastFeedRequest, GetPodcastFeedRequestBuilder> {
  /// The RSS feed URL of the podcast
  @BuiltValueField(wireName: r'rssFeed')
  String? get rssFeed;

  GetPodcastFeedRequest._();

  factory GetPodcastFeedRequest(
      [void updates(GetPodcastFeedRequestBuilder b)]) = _$GetPodcastFeedRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetPodcastFeedRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetPodcastFeedRequest> get serializer =>
      _$GetPodcastFeedRequestSerializer();
}

class _$GetPodcastFeedRequestSerializer
    implements PrimitiveSerializer<GetPodcastFeedRequest> {
  @override
  final Iterable<Type> types = const [
    GetPodcastFeedRequest,
    _$GetPodcastFeedRequest
  ];

  @override
  final String wireName = r'GetPodcastFeedRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetPodcastFeedRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rssFeed != null) {
      yield r'rssFeed';
      yield serializers.serialize(
        object.rssFeed,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetPodcastFeedRequest object, {
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
    required GetPodcastFeedRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rssFeed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rssFeed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetPodcastFeedRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetPodcastFeedRequestBuilder();
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
