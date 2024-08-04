//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/book.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_item_base.g.dart';

/// Base library item schema
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
@BuiltValue(instantiable: false)
abstract class LibraryItemBase {
  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The ID of library items on server version 2.2.23 and before.
  @BuiltValueField(wireName: r'oldLibraryItemId')
  String? get oldLibraryItemId;

  /// The inode of the item in the file system.
  @BuiltValueField(wireName: r'ino')
  String? get ino;

  /// The ID of the library.
  @BuiltValueField(wireName: r'libraryId')
  String? get libraryId;

  /// The ID of the folder.
  @BuiltValueField(wireName: r'folderId')
  String? get folderId;

  /// The path of the library item on the server.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// The path, relative to the library folder, of the library item.
  @BuiltValueField(wireName: r'relPath')
  String? get relPath;

  /// Whether the library item is a single file in the root of the library folder.
  @BuiltValueField(wireName: r'isFile')
  bool? get isFile;

  /// The time (in ms since POSIX epoch) when the library item was last modified on disk.
  @BuiltValueField(wireName: r'mtimeMs')
  int? get mtimeMs;

  /// The time (in ms since POSIX epoch) when the library item status was changed on disk.
  @BuiltValueField(wireName: r'ctimeMs')
  int? get ctimeMs;

  /// The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown.
  @BuiltValueField(wireName: r'birthtimeMs')
  int? get birthtimeMs;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  /// Whether the library item was scanned and no longer exists.
  @BuiltValueField(wireName: r'isMissing')
  bool? get isMissing;

  /// Whether the library item was scanned and no longer has media files.
  @BuiltValueField(wireName: r'isInvalid')
  bool? get isInvalid;

  @BuiltValueField(wireName: r'mediaType')
  MediaType? get mediaType;
  // enum mediaTypeEnum {  book,  podcast,  };

  @BuiltValueField(wireName: r'media')
  Book? get media;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryItemBase> get serializer =>
      _$LibraryItemBaseSerializer();
}

class _$LibraryItemBaseSerializer
    implements PrimitiveSerializer<LibraryItemBase> {
  @override
  final Iterable<Type> types = const [LibraryItemBase];

  @override
  final String wireName = r'LibraryItemBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryItemBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.oldLibraryItemId != null) {
      yield r'oldLibraryItemId';
      yield serializers.serialize(
        object.oldLibraryItemId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ino != null) {
      yield r'ino';
      yield serializers.serialize(
        object.ino,
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
    if (object.folderId != null) {
      yield r'folderId';
      yield serializers.serialize(
        object.folderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
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
    if (object.isFile != null) {
      yield r'isFile';
      yield serializers.serialize(
        object.isFile,
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
    if (object.ctimeMs != null) {
      yield r'ctimeMs';
      yield serializers.serialize(
        object.ctimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.birthtimeMs != null) {
      yield r'birthtimeMs';
      yield serializers.serialize(
        object.birthtimeMs,
        specifiedType: const FullType(int),
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
    if (object.isMissing != null) {
      yield r'isMissing';
      yield serializers.serialize(
        object.isMissing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isInvalid != null) {
      yield r'isInvalid';
      yield serializers.serialize(
        object.isInvalid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(MediaType),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType(Book),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryItemBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  LibraryItemBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($LibraryItemBase)) as $LibraryItemBase;
  }
}

/// a concrete implementation of [LibraryItemBase], since [LibraryItemBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $LibraryItemBase
    implements
        LibraryItemBase,
        Built<$LibraryItemBase, $LibraryItemBaseBuilder> {
  $LibraryItemBase._();

  factory $LibraryItemBase([void Function($LibraryItemBaseBuilder)? updates]) =
      _$$LibraryItemBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($LibraryItemBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$LibraryItemBase> get serializer =>
      _$$LibraryItemBaseSerializer();
}

class _$$LibraryItemBaseSerializer
    implements PrimitiveSerializer<$LibraryItemBase> {
  @override
  final Iterable<Type> types = const [$LibraryItemBase, _$$LibraryItemBase];

  @override
  final String wireName = r'$LibraryItemBase';

  @override
  Object serialize(
    Serializers serializers,
    $LibraryItemBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(LibraryItemBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LibraryItemBaseBuilder result,
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
        case r'oldLibraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oldLibraryItemId = valueDes;
          break;
        case r'ino':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ino = valueDes;
          break;
        case r'libraryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryId = valueDes;
          break;
        case r'folderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.folderId = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'relPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.relPath = valueDes;
          break;
        case r'isFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFile = valueDes;
          break;
        case r'mtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mtimeMs = valueDes;
          break;
        case r'ctimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ctimeMs = valueDes;
          break;
        case r'birthtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthtimeMs = valueDes;
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
        case r'isMissing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMissing = valueDes;
          break;
        case r'isInvalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isInvalid = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaType),
          ) as MediaType;
          result.mediaType = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Book),
          ) as Book;
          result.media.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $LibraryItemBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $LibraryItemBaseBuilder();
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
