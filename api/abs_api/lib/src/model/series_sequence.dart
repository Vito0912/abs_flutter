//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_sequence.g.dart';

/// A series object which includes the name and sequence of the series.
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [sequence] - The position in the series the book is.
@BuiltValue()
abstract class SeriesSequence
    implements Built<SeriesSequence, SeriesSequenceBuilder> {
  /// The ID of the series.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the series.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The position in the series the book is.
  @BuiltValueField(wireName: r'sequence')
  String? get sequence;

  SeriesSequence._();

  factory SeriesSequence([void updates(SeriesSequenceBuilder b)]) =
      _$SeriesSequence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesSequenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesSequence> get serializer =>
      _$SeriesSequenceSerializer();
}

class _$SeriesSequenceSerializer
    implements PrimitiveSerializer<SeriesSequence> {
  @override
  final Iterable<Type> types = const [SeriesSequence, _$SeriesSequence];

  @override
  final String wireName = r'SeriesSequence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesSequence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.sequence != null) {
      yield r'sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesSequence object, {
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
    required SeriesSequenceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sequence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesSequence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesSequenceBuilder();
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
