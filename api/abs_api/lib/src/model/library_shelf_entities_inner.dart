//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/series_shelf.dart';
import 'package:abs_api/src/model/media_type.dart';
import 'package:abs_api/src/model/library_item_shelf.dart';
import 'package:abs_api/src/model/library_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/book.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:abs_api/src/model/podcast_episode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_shelf_entities_inner.g.dart';

/// LibraryShelfEntitiesInner
///
/// Properties:
/// * [id] - The ID of the series.
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
/// * [recentEpisode]
/// * [name] - The name of the series.
/// * [description] - A description for the series. Will be null if there is none.
/// * [books]
/// * [inProgress] - Whether the user has started listening to the series.
/// * [hasActiveBook] - Whether the user has started listening to the series, but has not finished it.
/// * [hideFromContinueListening] - Whether the series should be hidden from the continue listening section.
/// * [bookInProgressLastUpdate] - An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated.
/// * [firstBookUnread]
@BuiltValue()
abstract class LibraryShelfEntitiesInner
    implements
        LibraryItemShelf,
        SeriesShelf,
        Built<LibraryShelfEntitiesInner, LibraryShelfEntitiesInnerBuilder> {
  LibraryShelfEntitiesInner._();

  factory LibraryShelfEntitiesInner(
          [void updates(LibraryShelfEntitiesInnerBuilder b)]) =
      _$LibraryShelfEntitiesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryShelfEntitiesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryShelfEntitiesInner> get serializer =>
      _$LibraryShelfEntitiesInnerSerializer();
}

class _$LibraryShelfEntitiesInnerSerializer
    implements PrimitiveSerializer<LibraryShelfEntitiesInner> {
  @override
  final Iterable<Type> types = const [
    LibraryShelfEntitiesInner,
    _$LibraryShelfEntitiesInner
  ];

  @override
  final String wireName = r'LibraryShelfEntitiesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryShelfEntitiesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.inProgress != null) {
      yield r'inProgress';
      yield serializers.serialize(
        object.inProgress,
        specifiedType: const FullType.nullable(bool),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType(Book),
      );
    }
    if (object.hideFromContinueListening != null) {
      yield r'hideFromContinueListening';
      yield serializers.serialize(
        object.hideFromContinueListening,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.recentEpisode != null) {
      yield r'recentEpisode';
      yield serializers.serialize(
        object.recentEpisode,
        specifiedType: const FullType(PodcastEpisode),
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
    if (object.oldLibraryItemId != null) {
      yield r'oldLibraryItemId';
      yield serializers.serialize(
        object.oldLibraryItemId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isFile != null) {
      yield r'isFile';
      yield serializers.serialize(
        object.isFile,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bookInProgressLastUpdate != null) {
      yield r'bookInProgressLastUpdate';
      yield serializers.serialize(
        object.bookInProgressLastUpdate,
        specifiedType: const FullType.nullable(int),
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
    if (object.isInvalid != null) {
      yield r'isInvalid';
      yield serializers.serialize(
        object.isInvalid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasActiveBook != null) {
      yield r'hasActiveBook';
      yield serializers.serialize(
        object.hasActiveBook,
        specifiedType: const FullType.nullable(bool),
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
    if (object.isMissing != null) {
      yield r'isMissing';
      yield serializers.serialize(
        object.isMissing,
        specifiedType: const FullType(bool),
      );
    }
    if (object.books != null) {
      yield r'books';
      yield serializers.serialize(
        object.books,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryItemMinified)]),
      );
    }
    if (object.mtimeMs != null) {
      yield r'mtimeMs';
      yield serializers.serialize(
        object.mtimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstBookUnread != null) {
      yield r'firstBookUnread';
      yield serializers.serialize(
        object.firstBookUnread,
        specifiedType: const FullType(LibraryItemMinified),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryShelfEntitiesInner object, {
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
    required LibraryShelfEntitiesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'inProgress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.inProgress = valueDes;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Book),
          ) as Book;
          result.media.replace(valueDes);
          break;
        case r'hideFromContinueListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hideFromContinueListening = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'recentEpisode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PodcastEpisode),
          ) as PodcastEpisode;
          result.recentEpisode.replace(valueDes);
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
        case r'oldLibraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.oldLibraryItemId = valueDes;
          break;
        case r'isFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFile = valueDes;
          break;
        case r'bookInProgressLastUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookInProgressLastUpdate = valueDes;
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
        case r'isInvalid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isInvalid = valueDes;
          break;
        case r'hasActiveBook':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.hasActiveBook = valueDes;
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
        case r'isMissing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isMissing = valueDes;
          break;
        case r'books':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemMinified)]),
          ) as BuiltList<LibraryItemMinified>;
          result.books.replace(valueDes);
          break;
        case r'mtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mtimeMs = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'firstBookUnread':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibraryItemMinified),
          ) as LibraryItemMinified;
          result.firstBookUnread.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryShelfEntitiesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryShelfEntitiesInnerBuilder();
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
