//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_progress.g.dart';

/// The user's progress of a series.
///
/// Properties:
/// * [libraryItemIds] - The IDs of the library items in the series.
/// * [libraryItemIdsFinished] - The IDs of the library items in the series that are finished.
/// * [isFinished] - Whether the series is finished.
@BuiltValue()
abstract class SeriesProgress
    implements Built<SeriesProgress, SeriesProgressBuilder> {
  /// The IDs of the library items in the series.
  @BuiltValueField(wireName: r'libraryItemIds')
  BuiltList<String>? get libraryItemIds;

  /// The IDs of the library items in the series that are finished.
  @BuiltValueField(wireName: r'libraryItemIdsFinished')
  BuiltList<String>? get libraryItemIdsFinished;

  /// Whether the series is finished.
  @BuiltValueField(wireName: r'isFinished')
  bool? get isFinished;

  SeriesProgress._();

  factory SeriesProgress([void updates(SeriesProgressBuilder b)]) =
      _$SeriesProgress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesProgressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesProgress> get serializer =>
      _$SeriesProgressSerializer();
}

class _$SeriesProgressSerializer
    implements PrimitiveSerializer<SeriesProgress> {
  @override
  final Iterable<Type> types = const [SeriesProgress, _$SeriesProgress];

  @override
  final String wireName = r'SeriesProgress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesProgress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryItemIds != null) {
      yield r'libraryItemIds';
      yield serializers.serialize(
        object.libraryItemIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.libraryItemIdsFinished != null) {
      yield r'libraryItemIdsFinished';
      yield serializers.serialize(
        object.libraryItemIdsFinished,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.isFinished != null) {
      yield r'isFinished';
      yield serializers.serialize(
        object.isFinished,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesProgress object, {
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
    required SeriesProgressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryItemIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.libraryItemIds.replace(valueDes);
          break;
        case r'libraryItemIdsFinished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.libraryItemIdsFinished.replace(valueDes);
          break;
        case r'isFinished':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFinished = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesProgress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesProgressBuilder();
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
