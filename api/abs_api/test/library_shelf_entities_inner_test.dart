import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for LibraryShelfEntitiesInner
void main() {
  final instance = LibraryShelfEntitiesInnerBuilder();
  // TODO add properties to the builder and call build()

  group(LibraryShelfEntitiesInner, () {
    // The ID of the series.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The ID of library items on server version 2.2.23 and before.
    // String oldLibraryItemId
    test('to test the property `oldLibraryItemId`', () async {
      // TODO
    });

    // The inode of the item in the file system.
    // String ino
    test('to test the property `ino`', () async {
      // TODO
    });

    // The ID of the library.
    // String libraryId
    test('to test the property `libraryId`', () async {
      // TODO
    });

    // The ID of the folder.
    // String folderId
    test('to test the property `folderId`', () async {
      // TODO
    });

    // The path of the library item on the server.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // The path, relative to the library folder, of the library item.
    // String relPath
    test('to test the property `relPath`', () async {
      // TODO
    });

    // Whether the library item is a single file in the root of the library folder.
    // bool isFile
    test('to test the property `isFile`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the library item was last modified on disk.
    // int mtimeMs
    test('to test the property `mtimeMs`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the library item status was changed on disk.
    // int ctimeMs
    test('to test the property `ctimeMs`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown.
    // int birthtimeMs
    test('to test the property `birthtimeMs`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when added to the server.
    // int addedAt
    test('to test the property `addedAt`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when last updated.
    // int updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Whether the library item was scanned and no longer exists.
    // bool isMissing
    test('to test the property `isMissing`', () async {
      // TODO
    });

    // Whether the library item was scanned and no longer has media files.
    // bool isInvalid
    test('to test the property `isInvalid`', () async {
      // TODO
    });

    // MediaType mediaType
    test('to test the property `mediaType`', () async {
      // TODO
    });

    // Book media
    test('to test the property `media`', () async {
      // TODO
    });

    // BuiltList<LibraryFile> libraryFiles
    test('to test the property `libraryFiles`', () async {
      // TODO
    });

    // The name of the series.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // A description for the series. Will be null if there is none.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // BuiltList<LibraryItemMinified> books
    test('to test the property `books`', () async {
      // TODO
    });

    // Whether the user has started listening to the series.
    // bool inProgress
    test('to test the property `inProgress`', () async {
      // TODO
    });

    // Whether the user has started listening to the series, but has not finished it.
    // bool hasActiveBook
    test('to test the property `hasActiveBook`', () async {
      // TODO
    });

    // Whether the series should be hidden from the continue listening section.
    // bool hideFromContinueListening
    test('to test the property `hideFromContinueListening`', () async {
      // TODO
    });

    // An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated.
    // int bookInProgressLastUpdate
    test('to test the property `bookInProgressLastUpdate`', () async {
      // TODO
    });

    // LibraryItemMinified firstBookUnread
    test('to test the property `firstBookUnread`', () async {
      // TODO
    });
  });
}
