//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_feeds_from_opml_text200_response_feeds_inner.g.dart';

/// GetFeedsFromOPMLText200ResponseFeedsInner
///
/// Properties:
/// * [title]
/// * [feedUrl]
@BuiltValue()
abstract class GetFeedsFromOPMLText200ResponseFeedsInner
    implements
        Built<GetFeedsFromOPMLText200ResponseFeedsInner,
            GetFeedsFromOPMLText200ResponseFeedsInnerBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'feedUrl')
  String? get feedUrl;

  GetFeedsFromOPMLText200ResponseFeedsInner._();

  factory GetFeedsFromOPMLText200ResponseFeedsInner(
          [void updates(GetFeedsFromOPMLText200ResponseFeedsInnerBuilder b)]) =
      _$GetFeedsFromOPMLText200ResponseFeedsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFeedsFromOPMLText200ResponseFeedsInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFeedsFromOPMLText200ResponseFeedsInner> get serializer =>
      _$GetFeedsFromOPMLText200ResponseFeedsInnerSerializer();
}

class _$GetFeedsFromOPMLText200ResponseFeedsInnerSerializer
    implements PrimitiveSerializer<GetFeedsFromOPMLText200ResponseFeedsInner> {
  @override
  final Iterable<Type> types = const [
    GetFeedsFromOPMLText200ResponseFeedsInner,
    _$GetFeedsFromOPMLText200ResponseFeedsInner
  ];

  @override
  final String wireName = r'GetFeedsFromOPMLText200ResponseFeedsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFeedsFromOPMLText200ResponseFeedsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.feedUrl != null) {
      yield r'feedUrl';
      yield serializers.serialize(
        object.feedUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFeedsFromOPMLText200ResponseFeedsInner object, {
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
    required GetFeedsFromOPMLText200ResponseFeedsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'feedUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.feedUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFeedsFromOPMLText200ResponseFeedsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFeedsFromOPMLText200ResponseFeedsInnerBuilder();
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
