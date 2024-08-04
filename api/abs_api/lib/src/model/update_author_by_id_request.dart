//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_author_by_id_request.g.dart';

/// UpdateAuthorByIdRequest
///
/// Properties:
/// * [name] - The name of the author.
/// * [description] - The new description of the author.
/// * [imagePath] - The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
/// * [asin] - The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
@BuiltValue()
abstract class UpdateAuthorByIdRequest
    implements Built<UpdateAuthorByIdRequest, UpdateAuthorByIdRequestBuilder> {
  /// The name of the author.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The new description of the author.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
  @BuiltValueField(wireName: r'imagePath')
  String? get imagePath;

  /// The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
  @BuiltValueField(wireName: r'asin')
  String? get asin;

  UpdateAuthorByIdRequest._();

  factory UpdateAuthorByIdRequest(
          [void updates(UpdateAuthorByIdRequestBuilder b)]) =
      _$UpdateAuthorByIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAuthorByIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAuthorByIdRequest> get serializer =>
      _$UpdateAuthorByIdRequestSerializer();
}

class _$UpdateAuthorByIdRequestSerializer
    implements PrimitiveSerializer<UpdateAuthorByIdRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateAuthorByIdRequest,
    _$UpdateAuthorByIdRequest
  ];

  @override
  final String wireName = r'UpdateAuthorByIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAuthorByIdRequest object, {
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
    if (object.imagePath != null) {
      yield r'imagePath';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.asin != null) {
      yield r'asin';
      yield serializers.serialize(
        object.asin,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAuthorByIdRequest object, {
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
    required UpdateAuthorByIdRequestBuilder result,
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
        case r'imagePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imagePath = valueDes;
          break;
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAuthorByIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAuthorByIdRequestBuilder();
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
