//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/abs_api.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_item_expanded.g.dart';

/// LibraryItemExpanded
///
/// Properties:
/// * [id] - The ID of library items after 2.3.0.
/// * [oldLibraryItemId] - The ID of library items on server version 2.2.23 and before.
/// * [ino] - The inode of the item in the file system.
/// * [libraryId] - The ID of the library.
/// * [folderId] - The ID of the folder.
/// * [path] - The path of the library item on the server.
/// * [relPath] - The path, relative to the library folder, of the library item.
/// * [isFile] - Whether the library item is a single file in the root of the library folder.
/// * [mtimeMs] - The time (in ms since POSIX epoch) when the library item was last modified on disk.
/// * [ctimeMs] - The time (in ms since POSIX epoch) when the library item status was changed on disk.
/// * [birthtimeMs] - The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [isMissing] - Whether the library item was scanned and no longer exists.
/// * [isInvalid] - Whether the library item was scanned and no longer has media files.
/// * [mediaType]
/// * [media]
/// * [size] - The total size (in bytes) of the item or file.
@BuiltValue()
abstract class LibraryItemExpanded
    implements
        LibraryItemBase,
        Built<LibraryItemExpanded, LibraryItemExpandedBuilder> {
  /// The total size (in bytes) of the item or file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  LibraryItemExpanded._();

  factory LibraryItemExpanded([void updates(LibraryItemExpandedBuilder b)]) =
      _$LibraryItemExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryItemExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryItemExpanded> get serializer =>
      _$LibraryItemExpandedSerializer();
}

class _$LibraryItemExpandedSerializer
    implements PrimitiveSerializer<LibraryItemExpanded> {
  @override
  final Iterable<Type> types = const [
    LibraryItemExpanded,
    _$LibraryItemExpanded
  ];

  @override
  final String wireName = r'LibraryItemExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryItemExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.oldLibraryItemId != null) {
      yield r'oldLibraryItemId';
      yield serializers.serialize(
        object.oldLibraryItemId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.ctimeMs != null) {
      yield r'ctimeMs';
      yield serializers.serialize(
        object.ctimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.isFile != null) {
      yield r'isFile';
      yield serializers.serialize(
        object.isFile,
        specifiedType: const FullType(bool),
      );
    }
    if (object.libraryId != null) {
      yield r'libraryId';
      yield serializers.serialize(
        object.libraryId,
        specifiedType: const FullType(String),
      );
    }
    if (object.relPath != null) {
      yield r'relPath';
      yield serializers.serialize(
        object.relPath,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(MediaType),
      );
    }
    if (object.ino != null) {
      yield r'ino';
      yield serializers.serialize(
        object.ino,
        specifiedType: const FullType(String),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType(Book),
      );
    }
    if (object.isInvalid != null) {
      yield r'isInvalid';
      yield serializers.serialize(
        object.isInvalid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.folderId != null) {
      yield r'folderId';
      yield serializers.serialize(
        object.folderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthtimeMs != null) {
      yield r'birthtimeMs';
      yield serializers.serialize(
        object.birthtimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.isMissing != null) {
      yield r'isMissing';
      yield serializers.serialize(
        object.isMissing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.mtimeMs != null) {
      yield r'mtimeMs';
      yield serializers.serialize(
        object.mtimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryItemExpanded object, {
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
    required LibraryItemExpandedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'oldLibraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oldLibraryItemId = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'ctimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ctimeMs = valueDes;
          break;
        case r'isFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFile = valueDes;
          break;
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryId = valueDes;
          break;
        case r'relPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.relPath = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaType),
          ) as MediaType;
          result.mediaType = valueDes;
          break;
        case r'ino':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ino = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Book),
          ) as Book;
          result.media.replace(valueDes);
          break;
        case r'isInvalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isInvalid = valueDes;
          break;
        case r'folderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.folderId = valueDes;
          break;
        case r'birthtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthtimeMs = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'isMissing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMissing = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'mtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mtimeMs = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryItemExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryItemExpandedBuilder();
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
