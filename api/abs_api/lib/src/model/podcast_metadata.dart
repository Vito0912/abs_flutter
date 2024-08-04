//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'podcast_metadata.g.dart';

/// Metadata for a podcast.
///
/// Properties:
/// * [title] - The title of the podcast.
/// * [author] - The author of the podcast.
/// * [description] - The description of the podcast.
/// * [releaseDate] - The release date of the podcast.
/// * [genres] - The genres of the podcast.
/// * [feedUrl] - The URL of the podcast feed.
/// * [imageUrl] - The URL of the podcast's image.
/// * [itunesPageUrl] - The URL of the podcast's iTunes page.
/// * [itunesId] - The iTunes ID of the podcast.
/// * [itunesArtistId] - The iTunes artist ID of the podcast.
/// * [explicit] - Whether the podcast contains explicit content.
/// * [language] - The language of the podcast.
/// * [type] - The type of podcast (e.g., episodic, serial).
@BuiltValue()
abstract class PodcastMetadata
    implements Built<PodcastMetadata, PodcastMetadataBuilder> {
  /// The title of the podcast.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The author of the podcast.
  @BuiltValueField(wireName: r'author')
  String? get author;

  /// The description of the podcast.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The release date of the podcast.
  @BuiltValueField(wireName: r'releaseDate')
  DateTime? get releaseDate;

  /// The genres of the podcast.
  @BuiltValueField(wireName: r'genres')
  BuiltList<String>? get genres;

  /// The URL of the podcast feed.
  @BuiltValueField(wireName: r'feedUrl')
  String? get feedUrl;

  /// The URL of the podcast's image.
  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  /// The URL of the podcast's iTunes page.
  @BuiltValueField(wireName: r'itunesPageUrl')
  String? get itunesPageUrl;

  /// The iTunes ID of the podcast.
  @BuiltValueField(wireName: r'itunesId')
  String? get itunesId;

  /// The iTunes artist ID of the podcast.
  @BuiltValueField(wireName: r'itunesArtistId')
  String? get itunesArtistId;

  /// Whether the podcast contains explicit content.
  @BuiltValueField(wireName: r'explicit')
  bool? get explicit;

  /// The language of the podcast.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// The type of podcast (e.g., episodic, serial).
  @BuiltValueField(wireName: r'type')
  String? get type;

  PodcastMetadata._();

  factory PodcastMetadata([void updates(PodcastMetadataBuilder b)]) =
      _$PodcastMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PodcastMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PodcastMetadata> get serializer =>
      _$PodcastMetadataSerializer();
}

class _$PodcastMetadataSerializer
    implements PrimitiveSerializer<PodcastMetadata> {
  @override
  final Iterable<Type> types = const [PodcastMetadata, _$PodcastMetadata];

  @override
  final String wireName = r'PodcastMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PodcastMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.releaseDate != null) {
      yield r'releaseDate';
      yield serializers.serialize(
        object.releaseDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.feedUrl != null) {
      yield r'feedUrl';
      yield serializers.serialize(
        object.feedUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itunesPageUrl != null) {
      yield r'itunesPageUrl';
      yield serializers.serialize(
        object.itunesPageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itunesId != null) {
      yield r'itunesId';
      yield serializers.serialize(
        object.itunesId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itunesArtistId != null) {
      yield r'itunesArtistId';
      yield serializers.serialize(
        object.itunesArtistId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.explicit != null) {
      yield r'explicit';
      yield serializers.serialize(
        object.explicit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PodcastMetadata object, {
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
    required PodcastMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.author = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'releaseDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.releaseDate = valueDes;
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.genres.replace(valueDes);
          break;
        case r'feedUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.feedUrl = valueDes;
          break;
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'itunesPageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itunesPageUrl = valueDes;
          break;
        case r'itunesId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itunesId = valueDes;
          break;
        case r'itunesArtistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itunesArtistId = valueDes;
          break;
        case r'explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.explicit = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PodcastMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PodcastMetadataBuilder();
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
