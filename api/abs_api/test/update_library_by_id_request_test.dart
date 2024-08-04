import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for UpdateLibraryByIdRequest
void main() {
  final instance = UpdateLibraryByIdRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateLibraryByIdRequest, () {
    // The name of the library.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The folders of the library. Only specify the fullPath.
    // BuiltList<Folder> folders
    test('to test the property `folders`', () async {
      // TODO
    });

    // The display order of the library. Must be >= 1.
    // int displayOrder
    test('to test the property `displayOrder`', () async {
      // TODO
    });

    // The icon of the library. See Library Icons for a list of possible icons.
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // The type of media that the library contains. Must be `book` or `podcast`.
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
  });
}
