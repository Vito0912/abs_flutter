//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_feeds_from_opml_text_request.g.dart';

/// GetFeedsFromOPMLTextRequest
///
/// Properties:
/// * [opmlText]
@BuiltValue()
abstract class GetFeedsFromOPMLTextRequest
    implements
        Built<GetFeedsFromOPMLTextRequest, GetFeedsFromOPMLTextRequestBuilder> {
  @BuiltValueField(wireName: r'opmlText')
  String? get opmlText;

  GetFeedsFromOPMLTextRequest._();

  factory GetFeedsFromOPMLTextRequest(
          [void updates(GetFeedsFromOPMLTextRequestBuilder b)]) =
      _$GetFeedsFromOPMLTextRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFeedsFromOPMLTextRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFeedsFromOPMLTextRequest> get serializer =>
      _$GetFeedsFromOPMLTextRequestSerializer();
}

class _$GetFeedsFromOPMLTextRequestSerializer
    implements PrimitiveSerializer<GetFeedsFromOPMLTextRequest> {
  @override
  final Iterable<Type> types = const [
    GetFeedsFromOPMLTextRequest,
    _$GetFeedsFromOPMLTextRequest
  ];

  @override
  final String wireName = r'GetFeedsFromOPMLTextRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFeedsFromOPMLTextRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.opmlText != null) {
      yield r'opmlText';
      yield serializers.serialize(
        object.opmlText,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFeedsFromOPMLTextRequest object, {
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
    required GetFeedsFromOPMLTextRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'opmlText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.opmlText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFeedsFromOPMLTextRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFeedsFromOPMLTextRequestBuilder();
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
