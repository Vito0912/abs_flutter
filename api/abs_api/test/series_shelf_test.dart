import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for SeriesShelf
void main() {
  final instance = SeriesShelfBuilder();
  // TODO add properties to the builder and call build()

  group(SeriesShelf, () {
    // The ID of the series.
    // String id
    test('to test the property `id`', () async {
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
