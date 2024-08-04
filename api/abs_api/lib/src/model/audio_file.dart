//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/book_chapter.dart';
import 'package:abs_api/src/model/file_metadata.dart';
import 'package:abs_api/src/model/audio_meta_tags.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio_file.g.dart';

/// An audio file for a book. Includes audio metadata and track numbers.
///
/// Properties:
/// * [index] - The index of the audio file.
/// * [ino] - The inode of the item in the file system.
/// * [metadata]
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [trackNumFromMeta] - The track number of the audio file as pulled from the file's metadata. Will be null if unknown.
/// * [discNumFromMeta] - The disc number of the audio file as pulled from the file's metadata. Will be null if unknown.
/// * [trackNumFromFilename] - The track number of the audio file as determined from the file's name. Will be null if unknown.
/// * [discNumFromFilename] - The disc number of the audio file as determined from the file's name. Will be null if unknown.
/// * [manuallyVerified] - Whether the audio file has been manually verified by a user.
/// * [invalid] - Whether the audio file is missing from the server.
/// * [exclude] - Whether the audio file has been marked for exclusion.
/// * [error] - Any error with the audio file. Will be null if there is none.
/// * [format] - The format of the audio file.
/// * [duration] - The total length (in seconds) of the item or file.
/// * [bitRate] - The bit rate (in bit/s) of the audio file.
/// * [language] - The language of the audio file.
/// * [codec] - The codec of the audio file.
/// * [timeBase] - The time base of the audio file.
/// * [channels] - The number of channels the audio file has.
/// * [channelLayout] - The layout of the audio file's channels.
/// * [chapters] - If the audio file is part of an audiobook, the chapters the file contains.
/// * [embeddedCoverArt] - The type of embedded cover art in the audio file. Will be null if none exists.
/// * [metaTags]
/// * [mimeType] - The MIME type of the audio file.
@BuiltValue()
abstract class AudioFile implements Built<AudioFile, AudioFileBuilder> {
  /// The index of the audio file.
  @BuiltValueField(wireName: r'index')
  int? get index;

  /// The inode of the item in the file system.
  @BuiltValueField(wireName: r'ino')
  String? get ino;

  @BuiltValueField(wireName: r'metadata')
  FileMetadata? get metadata;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  /// The track number of the audio file as pulled from the file's metadata. Will be null if unknown.
  @BuiltValueField(wireName: r'trackNumFromMeta')
  int? get trackNumFromMeta;

  /// The disc number of the audio file as pulled from the file's metadata. Will be null if unknown.
  @BuiltValueField(wireName: r'discNumFromMeta')
  String? get discNumFromMeta;

  /// The track number of the audio file as determined from the file's name. Will be null if unknown.
  @BuiltValueField(wireName: r'trackNumFromFilename')
  int? get trackNumFromFilename;

  /// The disc number of the audio file as determined from the file's name. Will be null if unknown.
  @BuiltValueField(wireName: r'discNumFromFilename')
  String? get discNumFromFilename;

  /// Whether the audio file has been manually verified by a user.
  @BuiltValueField(wireName: r'manuallyVerified')
  bool? get manuallyVerified;

  /// Whether the audio file is missing from the server.
  @BuiltValueField(wireName: r'invalid')
  bool? get invalid;

  /// Whether the audio file has been marked for exclusion.
  @BuiltValueField(wireName: r'exclude')
  bool? get exclude;

  /// Any error with the audio file. Will be null if there is none.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// The format of the audio file.
  @BuiltValueField(wireName: r'format')
  String? get format;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// The bit rate (in bit/s) of the audio file.
  @BuiltValueField(wireName: r'bitRate')
  int? get bitRate;

  /// The language of the audio file.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// The codec of the audio file.
  @BuiltValueField(wireName: r'codec')
  String? get codec;

  /// The time base of the audio file.
  @BuiltValueField(wireName: r'timeBase')
  String? get timeBase;

  /// The number of channels the audio file has.
  @BuiltValueField(wireName: r'channels')
  int? get channels;

  /// The layout of the audio file's channels.
  @BuiltValueField(wireName: r'channelLayout')
  String? get channelLayout;

  /// If the audio file is part of an audiobook, the chapters the file contains.
  @BuiltValueField(wireName: r'chapters')
  BuiltList<BookChapter?>? get chapters;

  /// The type of embedded cover art in the audio file. Will be null if none exists.
  @BuiltValueField(wireName: r'embeddedCoverArt')
  String? get embeddedCoverArt;

  @BuiltValueField(wireName: r'metaTags')
  AudioMetaTags? get metaTags;

  /// The MIME type of the audio file.
  @BuiltValueField(wireName: r'mimeType')
  String? get mimeType;

  AudioFile._();

  factory AudioFile([void updates(AudioFileBuilder b)]) = _$AudioFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AudioFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AudioFile> get serializer => _$AudioFileSerializer();
}

class _$AudioFileSerializer implements PrimitiveSerializer<AudioFile> {
  @override
  final Iterable<Type> types = const [AudioFile, _$AudioFile];

  @override
  final String wireName = r'AudioFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AudioFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.index != null) {
      yield r'index';
      yield serializers.serialize(
        object.index,
        specifiedType: const FullType(int),
      );
    }
    if (object.ino != null) {
      yield r'ino';
      yield serializers.serialize(
        object.ino,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(FileMetadata),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.trackNumFromMeta != null) {
      yield r'trackNumFromMeta';
      yield serializers.serialize(
        object.trackNumFromMeta,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.discNumFromMeta != null) {
      yield r'discNumFromMeta';
      yield serializers.serialize(
        object.discNumFromMeta,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trackNumFromFilename != null) {
      yield r'trackNumFromFilename';
      yield serializers.serialize(
        object.trackNumFromFilename,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.discNumFromFilename != null) {
      yield r'discNumFromFilename';
      yield serializers.serialize(
        object.discNumFromFilename,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.manuallyVerified != null) {
      yield r'manuallyVerified';
      yield serializers.serialize(
        object.manuallyVerified,
        specifiedType: const FullType(bool),
      );
    }
    if (object.invalid != null) {
      yield r'invalid';
      yield serializers.serialize(
        object.invalid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exclude != null) {
      yield r'exclude';
      yield serializers.serialize(
        object.exclude,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(num),
      );
    }
    if (object.bitRate != null) {
      yield r'bitRate';
      yield serializers.serialize(
        object.bitRate,
        specifiedType: const FullType(int),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.codec != null) {
      yield r'codec';
      yield serializers.serialize(
        object.codec,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeBase != null) {
      yield r'timeBase';
      yield serializers.serialize(
        object.timeBase,
        specifiedType: const FullType(String),
      );
    }
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType: const FullType(int),
      );
    }
    if (object.channelLayout != null) {
      yield r'channelLayout';
      yield serializers.serialize(
        object.channelLayout,
        specifiedType: const FullType(String),
      );
    }
    if (object.chapters != null) {
      yield r'chapters';
      yield serializers.serialize(
        object.chapters,
        specifiedType:
            const FullType(BuiltList, [FullType.nullable(BookChapter)]),
      );
    }
    if (object.embeddedCoverArt != null) {
      yield r'embeddedCoverArt';
      yield serializers.serialize(
        object.embeddedCoverArt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.metaTags != null) {
      yield r'metaTags';
      yield serializers.serialize(
        object.metaTags,
        specifiedType: const FullType(AudioMetaTags),
      );
    }
    if (object.mimeType != null) {
      yield r'mimeType';
      yield serializers.serialize(
        object.mimeType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AudioFile object, {
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
    required AudioFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'ino':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ino = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FileMetadata),
          ) as FileMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        case r'trackNumFromMeta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.trackNumFromMeta = valueDes;
          break;
        case r'discNumFromMeta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.discNumFromMeta = valueDes;
          break;
        case r'trackNumFromFilename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.trackNumFromFilename = valueDes;
          break;
        case r'discNumFromFilename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.discNumFromFilename = valueDes;
          break;
        case r'manuallyVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.manuallyVerified = valueDes;
          break;
        case r'invalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.invalid = valueDes;
          break;
        case r'exclude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exclude = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        case r'bitRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bitRate = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'codec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.codec = valueDes;
          break;
        case r'timeBase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeBase = valueDes;
          break;
        case r'channels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.channels = valueDes;
          break;
        case r'channelLayout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.channelLayout = valueDes;
          break;
        case r'chapters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType.nullable(BookChapter)]),
          ) as BuiltList<BookChapter?>;
          result.chapters.replace(valueDes);
          break;
        case r'embeddedCoverArt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.embeddedCoverArt = valueDes;
          break;
        case r'metaTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AudioMetaTags),
          ) as AudioMetaTags;
          result.metaTags.replace(valueDes);
          break;
        case r'mimeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mimeType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AudioFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AudioFileBuilder();
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
