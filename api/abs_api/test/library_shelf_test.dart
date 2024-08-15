import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for LibraryShelf
void main() {
  final instance = LibraryShelfBuilder();
  // TODO add properties to the builder and call build()

  group(LibraryShelf, () {
    // The ID (Name) of the shelf.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The label of the shelf.
    // String label
    test('to test the property `label`', () async {
      // TODO
    });

    // The localization key for the label.
    // String labelStringKey
    test('to test the property `labelStringKey`', () async {
      // TODO
    });

    // The type of items the shelf contains.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The category of the shelf.
    // String category
    test('to test the property `category`', () async {
      // TODO
    });

    // TODO! I use allOf, because of my programming language , buts a oneOf. It still works with allOf but you will have entries that are not always available.
    // BuiltList<LibraryItemShelf> entities
    test('to test the property `entities`', () async {
      // TODO
    });
  });
}
