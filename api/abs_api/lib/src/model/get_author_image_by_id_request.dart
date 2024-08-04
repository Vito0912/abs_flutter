//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_author_image_by_id_request.g.dart';

/// GetAuthorImageByIdRequest
///
/// Properties:
/// * [width] - The requested width of image in pixels.
/// * [height] - The requested height of image in pixels. If `null`, the height is scaled to maintain aspect ratio based on the requested width.
/// * [format] - The requested output format.
/// * [raw] - Return the raw image without scaling if true.
@BuiltValue()
abstract class GetAuthorImageByIdRequest
    implements
        Built<GetAuthorImageByIdRequest, GetAuthorImageByIdRequestBuilder> {
  /// The requested width of image in pixels.
  @BuiltValueField(wireName: r'width')
  int? get width;

  /// The requested height of image in pixels. If `null`, the height is scaled to maintain aspect ratio based on the requested width.
  @BuiltValueField(wireName: r'height')
  int? get height;

  /// The requested output format.
  @BuiltValueField(wireName: r'format')
  String? get format;

  /// Return the raw image without scaling if true.
  @BuiltValueField(wireName: r'raw')
  bool? get raw;

  GetAuthorImageByIdRequest._();

  factory GetAuthorImageByIdRequest(
          [void updates(GetAuthorImageByIdRequestBuilder b)]) =
      _$GetAuthorImageByIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAuthorImageByIdRequestBuilder b) => b
    ..width = 400
    ..format = 'jpeg'
    ..raw = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAuthorImageByIdRequest> get serializer =>
      _$GetAuthorImageByIdRequestSerializer();
}

class _$GetAuthorImageByIdRequestSerializer
    implements PrimitiveSerializer<GetAuthorImageByIdRequest> {
  @override
  final Iterable<Type> types = const [
    GetAuthorImageByIdRequest,
    _$GetAuthorImageByIdRequest
  ];

  @override
  final String wireName = r'GetAuthorImageByIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAuthorImageByIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.raw != null) {
      yield r'raw';
      yield serializers.serialize(
        object.raw,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAuthorImageByIdRequest object, {
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
    required GetAuthorImageByIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'raw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.raw = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAuthorImageByIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAuthorImageByIdRequestBuilder();
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
