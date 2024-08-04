//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_progress.g.dart';

/// MediaProgress
///
/// Properties:
/// * [id] - The ID of the media progress.
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [duration] - The total length (in seconds) of the item or file.
/// * [progress] - The user's progress in the media item.
/// * [currentTime] - The user's current time in the media item.
/// * [isFinished] - Whether the user has finished the media item.
/// * [hideFromContinueListening] - Whether the media item should be hidden from the continue listening section.
/// * [lastUpdate] - The time (in ms since POSIX epoch) when last updated.
/// * [startedAt] - The time (in ms since POSIX epoch) when was created.
/// * [finishedAt] - The time (in ms since POSIX epoch) when the media was finished. Will be null if the media has is not finished.
@BuiltValue()
abstract class MediaProgress
    implements Built<MediaProgress, MediaProgressBuilder> {
  /// The ID of the media progress.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  /// The total length (in seconds) of the item or file.
  @BuiltValueField(wireName: r'duration')
  num? get duration;

  /// The user's progress in the media item.
  @BuiltValueField(wireName: r'progress')
  num? get progress;

  /// The user's current time in the media item.
  @BuiltValueField(wireName: r'currentTime')
  num? get currentTime;

  /// Whether the user has finished the media item.
  @BuiltValueField(wireName: r'isFinished')
  bool? get isFinished;

  /// Whether the media item should be hidden from the continue listening section.
  @BuiltValueField(wireName: r'hideFromContinueListening')
  bool? get hideFromContinueListening;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'lastUpdate')
  int? get lastUpdate;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'startedAt')
  int? get startedAt;

  /// The time (in ms since POSIX epoch) when the media was finished. Will be null if the media has is not finished.
  @BuiltValueField(wireName: r'finishedAt')
  int? get finishedAt;

  MediaProgress._();

  factory MediaProgress([void updates(MediaProgressBuilder b)]) =
      _$MediaProgress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaProgressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaProgress> get serializer =>
      _$MediaProgressSerializer();
}

class _$MediaProgressSerializer implements PrimitiveSerializer<MediaProgress> {
  @override
  final Iterable<Type> types = const [MediaProgress, _$MediaProgress];

  @override
  final String wireName = r'MediaProgress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaProgress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
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
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(num),
      );
    }
    if (object.currentTime != null) {
      yield r'currentTime';
      yield serializers.serialize(
        object.currentTime,
        specifiedType: const FullType(num),
      );
    }
    if (object.isFinished != null) {
      yield r'isFinished';
      yield serializers.serialize(
        object.isFinished,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideFromContinueListening != null) {
      yield r'hideFromContinueListening';
      yield serializers.serialize(
        object.hideFromContinueListening,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastUpdate != null) {
      yield r'lastUpdate';
      yield serializers.serialize(
        object.lastUpdate,
        specifiedType: const FullType(int),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaProgress object, {
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
    required MediaProgressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.duration = valueDes;
          break;
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.progress = valueDes;
          break;
        case r'currentTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.currentTime = valueDes;
          break;
        case r'isFinished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFinished = valueDes;
          break;
        case r'hideFromContinueListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideFromContinueListening = valueDes;
          break;
        case r'lastUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastUpdate = valueDes;
          break;
        case r'startedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaProgress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaProgressBuilder();
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
