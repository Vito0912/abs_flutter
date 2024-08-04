import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for FileMetadata
void main() {
  final instance = FileMetadataBuilder();
  // TODO add properties to the builder and call build()

  group(FileMetadata, () {
    // The filename of the file.
    // String filename
    test('to test the property `filename`', () async {
      // TODO
    });

    // The file extension of the file.
    // String ext
    test('to test the property `ext`', () async {
      // TODO
    });

    // The absolute path on the server of the file.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // The path of the file, relative to the book's or podcast's folder.
    // String relPath
    test('to test the property `relPath`', () async {
      // TODO
    });

    // The total size (in bytes) of the item or file.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the file was last modified on disk.
    // int mtimeMs
    test('to test the property `mtimeMs`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the file status was changed on disk.
    // int ctimeMs
    test('to test the property `ctimeMs`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the file was created on disk. Will be 0 if unknown.
    // int birthtimeMs
    test('to test the property `birthtimeMs`', () async {
      // TODO
    });
  });
}
