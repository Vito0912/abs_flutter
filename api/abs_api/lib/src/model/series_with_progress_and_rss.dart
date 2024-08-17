//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/series_with_progress_and_rss_one_of.dart';
import 'package:abs_api/src/model/series.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'series_with_progress_and_rss.g.dart';

/// A series object which includes the name and progress of the series.
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [description] - A description for the series. Will be null if there is none.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [progress]
/// * [rssFeed] - The RSS feed for the series.
@BuiltValue()
abstract class SeriesWithProgressAndRSS
    implements
        Built<SeriesWithProgressAndRSS, SeriesWithProgressAndRSSBuilder> {
  /// One Of [Series], [SeriesWithProgressAndRSSOneOf]
  OneOf get oneOf;

  SeriesWithProgressAndRSS._();

  factory SeriesWithProgressAndRSS(
          [void updates(SeriesWithProgressAndRSSBuilder b)]) =
      _$SeriesWithProgressAndRSS;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesWithProgressAndRSSBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesWithProgressAndRSS> get serializer =>
      _$SeriesWithProgressAndRSSSerializer();
}

class _$SeriesWithProgressAndRSSSerializer
    implements PrimitiveSerializer<SeriesWithProgressAndRSS> {
  @override
  final Iterable<Type> types = const [
    SeriesWithProgressAndRSS,
    _$SeriesWithProgressAndRSS
  ];

  @override
  final String wireName = r'SeriesWithProgressAndRSS';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesWithProgressAndRSS object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SeriesWithProgressAndRSS object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SeriesWithProgressAndRSS deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesWithProgressAndRSSBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Series),
      FullType(SeriesWithProgressAndRSSOneOf),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
