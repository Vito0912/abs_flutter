//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/get_listening_stats200_response_items_value_media_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_listening_stats200_response_items_value.g.dart';

/// GetListeningStats200ResponseItemsValue
///
/// Properties:
/// * [id] - The ID of the library item.
/// * [timeListening] - The time (in seconds) the user listened to this library item.
/// * [mediaMetadata]
@BuiltValue()
abstract class GetListeningStats200ResponseItemsValue
    implements
        Built<GetListeningStats200ResponseItemsValue,
            GetListeningStats200ResponseItemsValueBuilder> {
  /// The ID of the library item.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The time (in seconds) the user listened to this library item.
  @BuiltValueField(wireName: r'timeListening')
  int? get timeListening;

  @BuiltValueField(wireName: r'mediaMetadata')
  GetListeningStats200ResponseItemsValueMediaMetadata? get mediaMetadata;

  GetListeningStats200ResponseItemsValue._();

  factory GetListeningStats200ResponseItemsValue(
          [void updates(GetListeningStats200ResponseItemsValueBuilder b)]) =
      _$GetListeningStats200ResponseItemsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetListeningStats200ResponseItemsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetListeningStats200ResponseItemsValue> get serializer =>
      _$GetListeningStats200ResponseItemsValueSerializer();
}

class _$GetListeningStats200ResponseItemsValueSerializer
    implements PrimitiveSerializer<GetListeningStats200ResponseItemsValue> {
  @override
  final Iterable<Type> types = const [
    GetListeningStats200ResponseItemsValue,
    _$GetListeningStats200ResponseItemsValue
  ];

  @override
  final String wireName = r'GetListeningStats200ResponseItemsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetListeningStats200ResponseItemsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeListening != null) {
      yield r'timeListening';
      yield serializers.serialize(
        object.timeListening,
        specifiedType: const FullType(int),
      );
    }
    if (object.mediaMetadata != null) {
      yield r'mediaMetadata';
      yield serializers.serialize(
        object.mediaMetadata,
        specifiedType:
            const FullType(GetListeningStats200ResponseItemsValueMediaMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetListeningStats200ResponseItemsValue object, {
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
    required GetListeningStats200ResponseItemsValueBuilder result,
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
        case r'timeListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeListening = valueDes;
          break;
        case r'mediaMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                GetListeningStats200ResponseItemsValueMediaMetadata),
          ) as GetListeningStats200ResponseItemsValueMediaMetadata;
          result.mediaMetadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetListeningStats200ResponseItemsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetListeningStats200ResponseItemsValueBuilder();
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
