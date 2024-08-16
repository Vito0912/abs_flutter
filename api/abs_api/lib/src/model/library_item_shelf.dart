//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/library_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item.dart';
import 'package:abs_api/src/model/book.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_item_shelf.g.dart';

/// A single episode of a podcast.
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
/// * [libraryFiles]
@BuiltValue(instantiable: false)
abstract class LibraryItemShelf implements LibraryItem {
  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryItemShelf> get serializer =>
      _$LibraryItemShelfSerializer();
}

class _$LibraryItemShelfSerializer
    implements PrimitiveSerializer<LibraryItemShelf> {
  @override
  final Iterable<Type> types = const [LibraryItemShelf];

  @override
  final String wireName = r'LibraryItemShelf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryItemShelf object, {
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
    if (object.libraryFiles != null) {
      yield r'libraryFiles';
      yield serializers.serialize(
        object.libraryFiles,
        specifiedType: const FullType(BuiltList, [FullType(LibraryFile)]),
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
    LibraryItemShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  LibraryItemShelf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($LibraryItemShelf)) as $LibraryItemShelf;
  }
}

/// a concrete implementation of [LibraryItemShelf], since [LibraryItemShelf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $LibraryItemShelf
    implements
        LibraryItemShelf,
        Built<$LibraryItemShelf, $LibraryItemShelfBuilder> {
  $LibraryItemShelf._();

  factory $LibraryItemShelf(
      [void Function($LibraryItemShelfBuilder)? updates]) = _$$LibraryItemShelf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($LibraryItemShelfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$LibraryItemShelf> get serializer =>
      _$$LibraryItemShelfSerializer();
}

class _$$LibraryItemShelfSerializer
    implements PrimitiveSerializer<$LibraryItemShelf> {
  @override
  final Iterable<Type> types = const [$LibraryItemShelf, _$$LibraryItemShelf];

  @override
  final String wireName = r'$LibraryItemShelf';

  @override
  Object serialize(
    Serializers serializers,
    $LibraryItemShelf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(LibraryItemShelf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LibraryItemShelfBuilder result,
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
        case r'libraryFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LibraryFile)]),
          ) as BuiltList<LibraryFile>;
          result.libraryFiles.replace(valueDes);
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
  $LibraryItemShelf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $LibraryItemShelfBuilder();
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
