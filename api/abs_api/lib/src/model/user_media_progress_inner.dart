//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_media_progress_inner.g.dart';

/// UserMediaProgressInner
///
/// Properties:
/// * [id]
/// * [libraryItemId]
/// * [episodeId]
/// * [duration]
/// * [progress]
/// * [currentTime]
/// * [isFinished]
/// * [hideFromContinueListening]
/// * [lastUpdate]
/// * [startedAt]
/// * [finishedAt]
@BuiltValue()
abstract class UserMediaProgressInner
    implements Built<UserMediaProgressInner, UserMediaProgressInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  @BuiltValueField(wireName: r'episodeId')
  String? get episodeId;

  @BuiltValueField(wireName: r'duration')
  num? get duration;

  @BuiltValueField(wireName: r'progress')
  num? get progress;

  @BuiltValueField(wireName: r'currentTime')
  num? get currentTime;

  @BuiltValueField(wireName: r'isFinished')
  bool? get isFinished;

  @BuiltValueField(wireName: r'hideFromContinueListening')
  bool? get hideFromContinueListening;

  @BuiltValueField(wireName: r'lastUpdate')
  int? get lastUpdate;

  @BuiltValueField(wireName: r'startedAt')
  int? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  int? get finishedAt;

  UserMediaProgressInner._();

  factory UserMediaProgressInner(
          [void updates(UserMediaProgressInnerBuilder b)]) =
      _$UserMediaProgressInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserMediaProgressInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserMediaProgressInner> get serializer =>
      _$UserMediaProgressInnerSerializer();
}

class _$UserMediaProgressInnerSerializer
    implements PrimitiveSerializer<UserMediaProgressInner> {
  @override
  final Iterable<Type> types = const [
    UserMediaProgressInner,
    _$UserMediaProgressInner
  ];

  @override
  final String wireName = r'UserMediaProgressInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserMediaProgressInner object, {
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
    if (object.episodeId != null) {
      yield r'episodeId';
      yield serializers.serialize(
        object.episodeId,
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
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserMediaProgressInner object, {
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
    required UserMediaProgressInnerBuilder result,
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
        case r'episodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.episodeId = valueDes;
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
            specifiedType: const FullType(int),
          ) as int;
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
  UserMediaProgressInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserMediaProgressInnerBuilder();
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
