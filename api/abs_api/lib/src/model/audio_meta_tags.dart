//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_meta_tags.g.dart';

/// ID3 metadata tags pulled from the audio file on import. Only non-null tags will be returned in requests.
///
/// Properties:
/// * [tagAlbum]
/// * [tagArtist]
/// * [tagGenre]
/// * [tagTitle]
/// * [tagSeries]
/// * [tagSeriesPart]
/// * [tagTrack]
/// * [tagDisc]
/// * [tagSubtitle]
/// * [tagAlbumArtist]
/// * [tagDate]
/// * [tagComposer]
/// * [tagPublisher]
/// * [tagComment]
/// * [tagDescription]
/// * [tagEncoder]
/// * [tagEncodedBy]
/// * [tagIsbn]
/// * [tagLanguage]
/// * [tagASIN]
/// * [tagOverdriveMediaMarker]
/// * [tagOriginalYear]
/// * [tagReleaseCountry]
/// * [tagReleaseType]
/// * [tagReleaseStatus]
/// * [tagISRC]
/// * [tagMusicBrainzTrackId]
/// * [tagMusicBrainzAlbumId]
/// * [tagMusicBrainzAlbumArtistId]
/// * [tagMusicBrainzArtistId]
@BuiltValue()
abstract class AudioMetaTags
    implements Built<AudioMetaTags, AudioMetaTagsBuilder> {
  @BuiltValueField(wireName: r'tagAlbum')
  String? get tagAlbum;

  @BuiltValueField(wireName: r'tagArtist')
  String? get tagArtist;

  @BuiltValueField(wireName: r'tagGenre')
  String? get tagGenre;

  @BuiltValueField(wireName: r'tagTitle')
  String? get tagTitle;

  @BuiltValueField(wireName: r'tagSeries')
  String? get tagSeries;

  @BuiltValueField(wireName: r'tagSeriesPart')
  String? get tagSeriesPart;

  @BuiltValueField(wireName: r'tagTrack')
  String? get tagTrack;

  @BuiltValueField(wireName: r'tagDisc')
  String? get tagDisc;

  @BuiltValueField(wireName: r'tagSubtitle')
  String? get tagSubtitle;

  @BuiltValueField(wireName: r'tagAlbumArtist')
  String? get tagAlbumArtist;

  @BuiltValueField(wireName: r'tagDate')
  String? get tagDate;

  @BuiltValueField(wireName: r'tagComposer')
  String? get tagComposer;

  @BuiltValueField(wireName: r'tagPublisher')
  String? get tagPublisher;

  @BuiltValueField(wireName: r'tagComment')
  String? get tagComment;

  @BuiltValueField(wireName: r'tagDescription')
  String? get tagDescription;

  @BuiltValueField(wireName: r'tagEncoder')
  String? get tagEncoder;

  @BuiltValueField(wireName: r'tagEncodedBy')
  String? get tagEncodedBy;

  @BuiltValueField(wireName: r'tagIsbn')
  String? get tagIsbn;

  @BuiltValueField(wireName: r'tagLanguage')
  String? get tagLanguage;

  @BuiltValueField(wireName: r'tagASIN')
  String? get tagASIN;

  @BuiltValueField(wireName: r'tagOverdriveMediaMarker')
  String? get tagOverdriveMediaMarker;

  @BuiltValueField(wireName: r'tagOriginalYear')
  String? get tagOriginalYear;

  @BuiltValueField(wireName: r'tagReleaseCountry')
  String? get tagReleaseCountry;

  @BuiltValueField(wireName: r'tagReleaseType')
  String? get tagReleaseType;

  @BuiltValueField(wireName: r'tagReleaseStatus')
  String? get tagReleaseStatus;

  @BuiltValueField(wireName: r'tagISRC')
  String? get tagISRC;

  @BuiltValueField(wireName: r'tagMusicBrainzTrackId')
  String? get tagMusicBrainzTrackId;

  @BuiltValueField(wireName: r'tagMusicBrainzAlbumId')
  String? get tagMusicBrainzAlbumId;

  @BuiltValueField(wireName: r'tagMusicBrainzAlbumArtistId')
  String? get tagMusicBrainzAlbumArtistId;

  @BuiltValueField(wireName: r'tagMusicBrainzArtistId')
  String? get tagMusicBrainzArtistId;

  AudioMetaTags._();

  factory AudioMetaTags([void updates(AudioMetaTagsBuilder b)]) =
      _$AudioMetaTags;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AudioMetaTagsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AudioMetaTags> get serializer =>
      _$AudioMetaTagsSerializer();
}

class _$AudioMetaTagsSerializer implements PrimitiveSerializer<AudioMetaTags> {
  @override
  final Iterable<Type> types = const [AudioMetaTags, _$AudioMetaTags];

  @override
  final String wireName = r'AudioMetaTags';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AudioMetaTags object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tagAlbum != null) {
      yield r'tagAlbum';
      yield serializers.serialize(
        object.tagAlbum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagArtist != null) {
      yield r'tagArtist';
      yield serializers.serialize(
        object.tagArtist,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagGenre != null) {
      yield r'tagGenre';
      yield serializers.serialize(
        object.tagGenre,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagTitle != null) {
      yield r'tagTitle';
      yield serializers.serialize(
        object.tagTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagSeries != null) {
      yield r'tagSeries';
      yield serializers.serialize(
        object.tagSeries,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagSeriesPart != null) {
      yield r'tagSeriesPart';
      yield serializers.serialize(
        object.tagSeriesPart,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagTrack != null) {
      yield r'tagTrack';
      yield serializers.serialize(
        object.tagTrack,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagDisc != null) {
      yield r'tagDisc';
      yield serializers.serialize(
        object.tagDisc,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagSubtitle != null) {
      yield r'tagSubtitle';
      yield serializers.serialize(
        object.tagSubtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagAlbumArtist != null) {
      yield r'tagAlbumArtist';
      yield serializers.serialize(
        object.tagAlbumArtist,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagDate != null) {
      yield r'tagDate';
      yield serializers.serialize(
        object.tagDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagComposer != null) {
      yield r'tagComposer';
      yield serializers.serialize(
        object.tagComposer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagPublisher != null) {
      yield r'tagPublisher';
      yield serializers.serialize(
        object.tagPublisher,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagComment != null) {
      yield r'tagComment';
      yield serializers.serialize(
        object.tagComment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagDescription != null) {
      yield r'tagDescription';
      yield serializers.serialize(
        object.tagDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagEncoder != null) {
      yield r'tagEncoder';
      yield serializers.serialize(
        object.tagEncoder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagEncodedBy != null) {
      yield r'tagEncodedBy';
      yield serializers.serialize(
        object.tagEncodedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagIsbn != null) {
      yield r'tagIsbn';
      yield serializers.serialize(
        object.tagIsbn,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagLanguage != null) {
      yield r'tagLanguage';
      yield serializers.serialize(
        object.tagLanguage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagASIN != null) {
      yield r'tagASIN';
      yield serializers.serialize(
        object.tagASIN,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagOverdriveMediaMarker != null) {
      yield r'tagOverdriveMediaMarker';
      yield serializers.serialize(
        object.tagOverdriveMediaMarker,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagOriginalYear != null) {
      yield r'tagOriginalYear';
      yield serializers.serialize(
        object.tagOriginalYear,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagReleaseCountry != null) {
      yield r'tagReleaseCountry';
      yield serializers.serialize(
        object.tagReleaseCountry,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagReleaseType != null) {
      yield r'tagReleaseType';
      yield serializers.serialize(
        object.tagReleaseType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagReleaseStatus != null) {
      yield r'tagReleaseStatus';
      yield serializers.serialize(
        object.tagReleaseStatus,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagISRC != null) {
      yield r'tagISRC';
      yield serializers.serialize(
        object.tagISRC,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagMusicBrainzTrackId != null) {
      yield r'tagMusicBrainzTrackId';
      yield serializers.serialize(
        object.tagMusicBrainzTrackId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagMusicBrainzAlbumId != null) {
      yield r'tagMusicBrainzAlbumId';
      yield serializers.serialize(
        object.tagMusicBrainzAlbumId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagMusicBrainzAlbumArtistId != null) {
      yield r'tagMusicBrainzAlbumArtistId';
      yield serializers.serialize(
        object.tagMusicBrainzAlbumArtistId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tagMusicBrainzArtistId != null) {
      yield r'tagMusicBrainzArtistId';
      yield serializers.serialize(
        object.tagMusicBrainzArtistId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AudioMetaTags object, {
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
    required AudioMetaTagsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tagAlbum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagAlbum = valueDes;
          break;
        case r'tagArtist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagArtist = valueDes;
          break;
        case r'tagGenre':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagGenre = valueDes;
          break;
        case r'tagTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagTitle = valueDes;
          break;
        case r'tagSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagSeries = valueDes;
          break;
        case r'tagSeriesPart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagSeriesPart = valueDes;
          break;
        case r'tagTrack':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagTrack = valueDes;
          break;
        case r'tagDisc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagDisc = valueDes;
          break;
        case r'tagSubtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagSubtitle = valueDes;
          break;
        case r'tagAlbumArtist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagAlbumArtist = valueDes;
          break;
        case r'tagDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagDate = valueDes;
          break;
        case r'tagComposer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagComposer = valueDes;
          break;
        case r'tagPublisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagPublisher = valueDes;
          break;
        case r'tagComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagComment = valueDes;
          break;
        case r'tagDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagDescription = valueDes;
          break;
        case r'tagEncoder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagEncoder = valueDes;
          break;
        case r'tagEncodedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagEncodedBy = valueDes;
          break;
        case r'tagIsbn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagIsbn = valueDes;
          break;
        case r'tagLanguage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagLanguage = valueDes;
          break;
        case r'tagASIN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagASIN = valueDes;
          break;
        case r'tagOverdriveMediaMarker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagOverdriveMediaMarker = valueDes;
          break;
        case r'tagOriginalYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagOriginalYear = valueDes;
          break;
        case r'tagReleaseCountry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagReleaseCountry = valueDes;
          break;
        case r'tagReleaseType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagReleaseType = valueDes;
          break;
        case r'tagReleaseStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagReleaseStatus = valueDes;
          break;
        case r'tagISRC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagISRC = valueDes;
          break;
        case r'tagMusicBrainzTrackId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagMusicBrainzTrackId = valueDes;
          break;
        case r'tagMusicBrainzAlbumId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagMusicBrainzAlbumId = valueDes;
          break;
        case r'tagMusicBrainzAlbumArtistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagMusicBrainzAlbumArtistId = valueDes;
          break;
        case r'tagMusicBrainzArtistId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tagMusicBrainzArtistId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AudioMetaTags deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AudioMetaTagsBuilder();
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
