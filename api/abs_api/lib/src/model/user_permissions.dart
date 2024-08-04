//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_permissions.g.dart';

/// UserPermissions
///
/// Properties:
/// * [download]
/// * [delete]
/// * [upload]
/// * [accessAllLibraries]
/// * [accessAllTags]
/// * [accessExplicitContent]
@BuiltValue()
abstract class UserPermissions
    implements Built<UserPermissions, UserPermissionsBuilder> {
  @BuiltValueField(wireName: r'download')
  bool? get download;

  @BuiltValueField(wireName: r'delete')
  bool? get delete;

  @BuiltValueField(wireName: r'upload')
  bool? get upload;

  @BuiltValueField(wireName: r'accessAllLibraries')
  bool? get accessAllLibraries;

  @BuiltValueField(wireName: r'accessAllTags')
  bool? get accessAllTags;

  @BuiltValueField(wireName: r'accessExplicitContent')
  bool? get accessExplicitContent;

  UserPermissions._();

  factory UserPermissions([void updates(UserPermissionsBuilder b)]) =
      _$UserPermissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPermissions> get serializer =>
      _$UserPermissionsSerializer();
}

class _$UserPermissionsSerializer
    implements PrimitiveSerializer<UserPermissions> {
  @override
  final Iterable<Type> types = const [UserPermissions, _$UserPermissions];

  @override
  final String wireName = r'UserPermissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPermissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.download != null) {
      yield r'download';
      yield serializers.serialize(
        object.download,
        specifiedType: const FullType(bool),
      );
    }
    if (object.delete != null) {
      yield r'delete';
      yield serializers.serialize(
        object.delete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.upload != null) {
      yield r'upload';
      yield serializers.serialize(
        object.upload,
        specifiedType: const FullType(bool),
      );
    }
    if (object.accessAllLibraries != null) {
      yield r'accessAllLibraries';
      yield serializers.serialize(
        object.accessAllLibraries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.accessAllTags != null) {
      yield r'accessAllTags';
      yield serializers.serialize(
        object.accessAllTags,
        specifiedType: const FullType(bool),
      );
    }
    if (object.accessExplicitContent != null) {
      yield r'accessExplicitContent';
      yield serializers.serialize(
        object.accessExplicitContent,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPermissions object, {
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
    required UserPermissionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'download':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.download = valueDes;
          break;
        case r'delete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.delete = valueDes;
          break;
        case r'upload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upload = valueDes;
          break;
        case r'accessAllLibraries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accessAllLibraries = valueDes;
          break;
        case r'accessAllTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accessAllTags = valueDes;
          break;
        case r'accessExplicitContent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accessExplicitContent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPermissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPermissionsBuilder();
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
