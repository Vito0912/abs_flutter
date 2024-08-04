//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permissions.g.dart';

/// Permissions
///
/// Properties:
/// * [download] - Whether the user has permission to download media.
/// * [update_] - Whether the user has permission to update media.
/// * [delete] - Whether the user has permission to delete media.
/// * [upload] - Whether the user has permission to upload media.
/// * [accessAllLibraries] - Whether the user has permission to access all libraries.
/// * [accessAllTags] - Whether the user has permission to access all tags.
/// * [accessExplicitContent] - Whether the user has permission to access explicit content.
@BuiltValue()
abstract class Permissions implements Built<Permissions, PermissionsBuilder> {
  /// Whether the user has permission to download media.
  @BuiltValueField(wireName: r'download')
  bool get download;

  /// Whether the user has permission to update media.
  @BuiltValueField(wireName: r'update')
  bool get update_;

  /// Whether the user has permission to delete media.
  @BuiltValueField(wireName: r'delete')
  bool get delete;

  /// Whether the user has permission to upload media.
  @BuiltValueField(wireName: r'upload')
  bool get upload;

  /// Whether the user has permission to access all libraries.
  @BuiltValueField(wireName: r'accessAllLibraries')
  bool get accessAllLibraries;

  /// Whether the user has permission to access all tags.
  @BuiltValueField(wireName: r'accessAllTags')
  bool get accessAllTags;

  /// Whether the user has permission to access explicit content.
  @BuiltValueField(wireName: r'accessExplicitContent')
  bool get accessExplicitContent;

  Permissions._();

  factory Permissions([void updates(PermissionsBuilder b)]) = _$Permissions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Permissions> get serializer => _$PermissionsSerializer();
}

class _$PermissionsSerializer implements PrimitiveSerializer<Permissions> {
  @override
  final Iterable<Type> types = const [Permissions, _$Permissions];

  @override
  final String wireName = r'Permissions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Permissions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'download';
    yield serializers.serialize(
      object.download,
      specifiedType: const FullType(bool),
    );
    yield r'update';
    yield serializers.serialize(
      object.update_,
      specifiedType: const FullType(bool),
    );
    yield r'delete';
    yield serializers.serialize(
      object.delete,
      specifiedType: const FullType(bool),
    );
    yield r'upload';
    yield serializers.serialize(
      object.upload,
      specifiedType: const FullType(bool),
    );
    yield r'accessAllLibraries';
    yield serializers.serialize(
      object.accessAllLibraries,
      specifiedType: const FullType(bool),
    );
    yield r'accessAllTags';
    yield serializers.serialize(
      object.accessAllTags,
      specifiedType: const FullType(bool),
    );
    yield r'accessExplicitContent';
    yield serializers.serialize(
      object.accessExplicitContent,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Permissions object, {
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
    required PermissionsBuilder result,
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
        case r'update':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.update_ = valueDes;
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
  Permissions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionsBuilder();
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
