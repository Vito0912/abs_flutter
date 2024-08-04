import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for UpdateAuthorByIdRequest
void main() {
  final instance = UpdateAuthorByIdRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateAuthorByIdRequest, () {
    // The name of the author.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The new description of the author.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
    // String imagePath
    test('to test the property `imagePath`', () async {
      // TODO
    });

    // The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
    // String asin
    test('to test the property `asin`', () async {
      // TODO
    });
  });
}
