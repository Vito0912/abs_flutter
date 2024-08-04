//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/file_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_track.g.dart';

/// Represents an audio track with various properties.
///
/// Properties:
/// * [index] - The index of the audio track.
/// * [startOffset] - The start offset of the audio track in seconds.
/// * [duration] - The duration of the audio track in seconds.
/// * [title] - The title of the audio track.
/// * [contentUrl] - The URL where the audio track content is located.
/// * [mimeType] - The MIME type of the audio track.
/// * [codec] - The codec used for the audio track.
/// * [metadata]
@BuiltValue()
abstract class AudioTrack implements Built<AudioTrack, AudioTrackBuilder> {
  /// The index of the audio track.
  @BuiltValueField(wireName: r'index')
  int? get index;

  /// The start offset of the audio track in seconds.
  @BuiltValueField(wireName: r'startOffset')
  double? get startOffset;

  /// The duration of the audio track in seconds.
  @BuiltValueField(wireName: r'duration')
  double? get duration;

  /// The title of the audio track.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The URL where the audio track content is located.
  @BuiltValueField(wireName: r'contentUrl')
  String? get contentUrl;

  /// The MIME type of the audio track.
  @BuiltValueField(wireName: r'mimeType')
  String? get mimeType;

  /// The codec used for the audio track.
  @BuiltValueField(wireName: r'codec')
  String? get codec;

  @BuiltValueField(wireName: r'metadata')
  FileMetadata? get metadata;

  AudioTrack._();

  factory AudioTrack([void updates(AudioTrackBuilder b)]) = _$AudioTrack;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AudioTrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AudioTrack> get serializer => _$AudioTrackSerializer();
}

class _$AudioTrackSerializer implements PrimitiveSerializer<AudioTrack> {
  @override
  final Iterable<Type> types = const [AudioTrack, _$AudioTrack];

  @override
  final String wireName = r'AudioTrack';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AudioTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.startOffset != null) {
      yield r'startOffset';
      yield serializers.serialize(
        object.startOffset,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.contentUrl != null) {
      yield r'contentUrl';
      yield serializers.serialize(
        object.contentUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mimeType != null) {
      yield r'mimeType';
      yield serializers.serialize(
        object.mimeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.codec != null) {
      yield r'codec';
      yield serializers.serialize(
        object.codec,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(FileMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AudioTrack object, {
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
    required AudioTrackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.index = valueDes;
          break;
        case r'startOffset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.startOffset = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'contentUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contentUrl = valueDes;
          break;
        case r'mimeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mimeType = valueDes;
          break;
        case r'codec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.codec = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FileMetadata),
          ) as FileMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AudioTrack deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AudioTrackBuilder();
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
