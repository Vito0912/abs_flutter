//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folder.g.dart';

/// Folder used in library
///
/// Properties:
/// * [id] - The ID of the folder.
/// * [fullPath] - The path on the server for the folder. (Read Only)
/// * [libraryId] - The ID of the library.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
@BuiltValue()
abstract class Folder implements Built<Folder, FolderBuilder> {
  /// The ID of the folder.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The path on the server for the folder. (Read Only)
  @BuiltValueField(wireName: r'fullPath')
  String? get fullPath;

  /// The ID of the library.
  @BuiltValueField(wireName: r'libraryId')
  String? get libraryId;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  Folder._();

  factory Folder([void updates(FolderBuilder b)]) = _$Folder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Folder> get serializer => _$FolderSerializer();
}

class _$FolderSerializer implements PrimitiveSerializer<Folder> {
  @override
  final Iterable<Type> types = const [Folder, _$Folder];

  @override
  final String wireName = r'Folder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Folder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullPath != null) {
      yield r'fullPath';
      yield serializers.serialize(
        object.fullPath,
        specifiedType: const FullType(String),
      );
    }
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType(String),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Folder object, {
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
    required FolderBuilder result,
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
        case r'fullPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullPath = valueDes;
          break;
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryId = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Folder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FolderBuilder();
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
