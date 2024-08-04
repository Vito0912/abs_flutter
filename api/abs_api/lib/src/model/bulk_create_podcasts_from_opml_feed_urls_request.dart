//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_podcasts_from_opml_feed_urls_request.g.dart';

/// BulkCreatePodcastsFromOpmlFeedUrlsRequest
///
/// Properties:
/// * [feeds]
/// * [libraryId] - The ID of the library.
/// * [folderId] - The ID of the folder.
/// * [autoDownloadEpisodes] - Whether episodes are automatically downloaded.
@BuiltValue()
abstract class BulkCreatePodcastsFromOpmlFeedUrlsRequest
    implements
        Built<BulkCreatePodcastsFromOpmlFeedUrlsRequest,
            BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder> {
  @BuiltValueField(wireName: r'feeds')
  BuiltList<String>? get feeds;

  /// The ID of the library.
  @BuiltValueField(wireName: r'libraryId')
  String? get libraryId;

  /// The ID of the folder.
  @BuiltValueField(wireName: r'folderId')
  String? get folderId;

  /// Whether episodes are automatically downloaded.
  @BuiltValueField(wireName: r'autoDownloadEpisodes')
  bool? get autoDownloadEpisodes;

  BulkCreatePodcastsFromOpmlFeedUrlsRequest._();

  factory BulkCreatePodcastsFromOpmlFeedUrlsRequest(
          [void updates(BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder b)]) =
      _$BulkCreatePodcastsFromOpmlFeedUrlsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreatePodcastsFromOpmlFeedUrlsRequest> get serializer =>
      _$BulkCreatePodcastsFromOpmlFeedUrlsRequestSerializer();
}

class _$BulkCreatePodcastsFromOpmlFeedUrlsRequestSerializer
    implements PrimitiveSerializer<BulkCreatePodcastsFromOpmlFeedUrlsRequest> {
  @override
  final Iterable<Type> types = const [
    BulkCreatePodcastsFromOpmlFeedUrlsRequest,
    _$BulkCreatePodcastsFromOpmlFeedUrlsRequest
  ];

  @override
  final String wireName = r'BulkCreatePodcastsFromOpmlFeedUrlsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreatePodcastsFromOpmlFeedUrlsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.feeds != null) {
      yield r'feeds';
      yield serializers.serialize(
        object.feeds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType(String),
      );
    }
    if (object.folderId != null) {
      yield r'folderId';
      yield serializers.serialize(
        object.folderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.autoDownloadEpisodes != null) {
      yield r'autoDownloadEpisodes';
      yield serializers.serialize(
        object.autoDownloadEpisodes,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreatePodcastsFromOpmlFeedUrlsRequest object, {
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
    required BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'feeds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.feeds.replace(valueDes);
          break;
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryId = valueDes;
          break;
        case r'folderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.folderId = valueDes;
          break;
        case r'autoDownloadEpisodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoDownloadEpisodes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreatePodcastsFromOpmlFeedUrlsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder();
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
