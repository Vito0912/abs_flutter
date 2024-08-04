//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/model_library.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_libraries200_response.g.dart';

/// GetLibraries200Response
///
/// Properties:
/// * [libraries]
@BuiltValue()
abstract class GetLibraries200Response
    implements Built<GetLibraries200Response, GetLibraries200ResponseBuilder> {
  @BuiltValueField(wireName: r'libraries')
  BuiltList<ModelLibrary>? get libraries;

  GetLibraries200Response._();

  factory GetLibraries200Response(
          [void updates(GetLibraries200ResponseBuilder b)]) =
      _$GetLibraries200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLibraries200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLibraries200Response> get serializer =>
      _$GetLibraries200ResponseSerializer();
}

class _$GetLibraries200ResponseSerializer
    implements PrimitiveSerializer<GetLibraries200Response> {
  @override
  final Iterable<Type> types = const [
    GetLibraries200Response,
    _$GetLibraries200Response
  ];

  @override
  final String wireName = r'GetLibraries200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLibraries200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraries != null) {
      yield r'libraries';
      yield serializers.serialize(
        object.libraries,
        specifiedType: const FullType(BuiltList, [FullType(ModelLibrary)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLibraries200Response object, {
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
    required GetLibraries200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelLibrary)]),
          ) as BuiltList<ModelLibrary>;
          result.libraries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLibraries200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLibraries200ResponseBuilder();
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
