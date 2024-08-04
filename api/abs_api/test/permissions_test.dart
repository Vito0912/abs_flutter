import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for Permissions
void main() {
  final instance = PermissionsBuilder();
  // TODO add properties to the builder and call build()

  group(Permissions, () {
    // Whether the user has permission to download media.
    // bool downloads
    test('to test the property `downloads`', () async {
      // TODO
    });

    // Whether the user has permission to update media.
    // bool update
    test('to test the property `update`', () async {
      // TODO
    });

    // Whether the user has permission to delete media.
    // bool delete
    test('to test the property `delete`', () async {
      // TODO
    });

    // Whether the user has permission to upload media.
    // bool upload
    test('to test the property `upload`', () async {
      // TODO
    });

    // Whether the user has permission to access all libraries.
    // bool accessAllLibraries
    test('to test the property `accessAllLibraries`', () async {
      // TODO
    });

    // Whether the user has permission to access all tags.
    // bool accessAllTags
    test('to test the property `accessAllTags`', () async {
      // TODO
    });

    // Whether the user has permission to access explicit content.
    // bool accessExplicitContent
    test('to test the property `accessExplicitContent`', () async {
      // TODO
    });
  });
}
