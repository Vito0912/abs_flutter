import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for ModelLibrary
void main() {
  final instance = ModelLibraryBuilder();
  // TODO add properties to the builder and call build()

  group(ModelLibrary, () {
    // The ID of the library.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the library.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The folders that belong to the library.
    // BuiltList<Folder> folders
    test('to test the property `folders`', () async {
      // TODO
    });

    // Display position of the library in the list of libraries. Must be >= 1.
    // int displayOrder
    test('to test the property `displayOrder`', () async {
      // TODO
    });

    // The selected icon for the library. See Library Icons for a list of possible icons.
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // The type of media that the library contains. Will be `book` or `podcast`. (Read Only)
    // String mediaType
    test('to test the property `mediaType`', () async {
      // TODO
    });

    // Preferred metadata provider for the library. See Metadata Providers for a list of possible providers.
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // LibrarySettings settings
    test('to test the property `settings`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when was created.
    // int createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when last updated.
    // int lastUpdate
    test('to test the property `lastUpdate`', () async {
      // TODO
    });
  });
}
