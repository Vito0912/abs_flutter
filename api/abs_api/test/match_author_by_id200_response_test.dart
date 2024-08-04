import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for MatchAuthorById200Response
void main() {
  final instance = MatchAuthorById200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(MatchAuthorById200Response, () {
    // The ID of the author.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
    // String asin
    test('to test the property `asin`', () async {
      // TODO
    });

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

    // The items associated with the author
    // BuiltList<LibraryItemMinified> libraryItems
    test('to test the property `libraryItems`', () async {
      // TODO
    });

    // The series associated with the author
    // BuiltList<AuthorSeries> series
    test('to test the property `series`', () async {
      // TODO
    });
  });
}
