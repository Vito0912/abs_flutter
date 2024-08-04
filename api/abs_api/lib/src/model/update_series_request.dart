//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_series_request.g.dart';

/// UpdateSeriesRequest
///
/// Properties:
/// * [name] - The name of the series.
/// * [description] - A description for the series. Will be null if there is none.
@BuiltValue()
abstract class UpdateSeriesRequest
    implements Built<UpdateSeriesRequest, UpdateSeriesRequestBuilder> {
  /// The name of the series.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// A description for the series. Will be null if there is none.
  @BuiltValueField(wireName: r'description')
  String? get description;

  UpdateSeriesRequest._();

  factory UpdateSeriesRequest([void updates(UpdateSeriesRequestBuilder b)]) =
      _$UpdateSeriesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSeriesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSeriesRequest> get serializer =>
      _$UpdateSeriesRequestSerializer();
}

class _$UpdateSeriesRequestSerializer
    implements PrimitiveSerializer<UpdateSeriesRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateSeriesRequest,
    _$UpdateSeriesRequest
  ];

  @override
  final String wireName = r'UpdateSeriesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSeriesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSeriesRequest object, {
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
    required UpdateSeriesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSeriesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSeriesRequestBuilder();
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
