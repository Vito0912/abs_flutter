//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author_minified.g.dart';

/// Minified author object which only contains the author name and ID.
///
/// Properties:
/// * [id] - The ID of the author.
/// * [name] - The name of the author.
@BuiltValue()
abstract class AuthorMinified
    implements Built<AuthorMinified, AuthorMinifiedBuilder> {
  /// The ID of the author.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the author.
  @BuiltValueField(wireName: r'name')
  String? get name;

  AuthorMinified._();

  factory AuthorMinified([void updates(AuthorMinifiedBuilder b)]) =
      _$AuthorMinified;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorMinifiedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorMinified> get serializer =>
      _$AuthorMinifiedSerializer();
}

class _$AuthorMinifiedSerializer
    implements PrimitiveSerializer<AuthorMinified> {
  @override
  final Iterable<Type> types = const [AuthorMinified, _$AuthorMinified];

  @override
  final String wireName = r'AuthorMinified';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorMinified object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthorMinified object, {
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
    required AuthorMinifiedBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthorMinified deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorMinifiedBuilder();
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
