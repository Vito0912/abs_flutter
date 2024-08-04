//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/series_progress.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_with_progress_and_rss_one_of.g.dart';

/// SeriesWithProgressAndRSSOneOf
///
/// Properties:
/// * [progress]
/// * [rssFeed] - The RSS feed for the series.
@BuiltValue()
abstract class SeriesWithProgressAndRSSOneOf
    implements
        Built<SeriesWithProgressAndRSSOneOf,
            SeriesWithProgressAndRSSOneOfBuilder> {
  @BuiltValueField(wireName: r'progress')
  SeriesProgress? get progress;

  /// The RSS feed for the series.
  @BuiltValueField(wireName: r'rssFeed')
  String? get rssFeed;

  SeriesWithProgressAndRSSOneOf._();

  factory SeriesWithProgressAndRSSOneOf(
          [void updates(SeriesWithProgressAndRSSOneOfBuilder b)]) =
      _$SeriesWithProgressAndRSSOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesWithProgressAndRSSOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesWithProgressAndRSSOneOf> get serializer =>
      _$SeriesWithProgressAndRSSOneOfSerializer();
}

class _$SeriesWithProgressAndRSSOneOfSerializer
    implements PrimitiveSerializer<SeriesWithProgressAndRSSOneOf> {
  @override
  final Iterable<Type> types = const [
    SeriesWithProgressAndRSSOneOf,
    _$SeriesWithProgressAndRSSOneOf
  ];

  @override
  final String wireName = r'SeriesWithProgressAndRSSOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesWithProgressAndRSSOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.progress != null) {
      yield r'progress';
      yield serializers.serialize(
        object.progress,
        specifiedType: const FullType(SeriesProgress),
      );
    }
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
    SeriesWithProgressAndRSSOneOf object, {
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
    required SeriesWithProgressAndRSSOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'progress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesProgress),
          ) as SeriesProgress;
          result.progress.replace(valueDes);
          break;
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
  SeriesWithProgressAndRSSOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesWithProgressAndRSSOneOfBuilder();
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
