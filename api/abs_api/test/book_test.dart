import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for Book
void main() {
  final instance = BookBuilder();
  // TODO add properties to the builder and call build()

  group(Book, () {
    // TODO
    // JsonObject id
    test('to test the property `id`', () async {
      // TODO
    });

    // The ID of library items after 2.3.0.
    // String libraryItemId
    test('to test the property `libraryItemId`', () async {
      // TODO
    });

    // The absolute path on the server of the cover file. Will be null if there is no cover.
    // String coverPath
    test('to test the property `coverPath`', () async {
      // TODO
    });

    // Tags applied to items.
    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // BuiltList<AudioFile> audioFiles
    test('to test the property `audioFiles`', () async {
      // TODO
    });

    // BuiltList<BookChapter> chapters
    test('to test the property `chapters`', () async {
      // TODO
    });

    // Any parts missing from the book by track index.
    // BuiltList<int> missingParts
    test('to test the property `missingParts`', () async {
      // TODO
    });

    // EbookFile ebookFile
    test('to test the property `ebookFile`', () async {
      // TODO
    });

    // BookMetadata metadata
    test('to test the property `metadata`', () async {
      // TODO
    });
  });
}
