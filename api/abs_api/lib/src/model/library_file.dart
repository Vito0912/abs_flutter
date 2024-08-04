//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/file_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_file.g.dart';

/// A library file. Includes the path and metadata of the file.
///
/// Properties:
/// * [ino] - The inode of the item in the file system.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [fileType] - The type of file.
/// * [metadata]
@BuiltValue()
abstract class LibraryFile implements Built<LibraryFile, LibraryFileBuilder> {
  /// The inode of the item in the file system.
  @BuiltValueField(wireName: r'ino')
  String? get ino;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  /// The type of file.
  @BuiltValueField(wireName: r'fileType')
  String? get fileType;

  @BuiltValueField(wireName: r'metadata')
  FileMetadata? get metadata;

  LibraryFile._();

  factory LibraryFile([void updates(LibraryFileBuilder b)]) = _$LibraryFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryFile> get serializer => _$LibraryFileSerializer();
}

class _$LibraryFileSerializer implements PrimitiveSerializer<LibraryFile> {
  @override
  final Iterable<Type> types = const [LibraryFile, _$LibraryFile];

  @override
  final String wireName = r'LibraryFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ino != null) {
      yield r'ino';
      yield serializers.serialize(
        object.ino,
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
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.fileType != null) {
      yield r'fileType';
      yield serializers.serialize(
        object.fileType,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(FileMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryFile object, {
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
    required LibraryFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ino':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ino = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        case r'fileType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileType = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FileMetadata),
          ) as FileMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryFileBuilder();
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
