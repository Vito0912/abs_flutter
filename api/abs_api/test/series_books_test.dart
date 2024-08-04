import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for SeriesBooks
void main() {
  final instance = SeriesBooksBuilder();
  // TODO add properties to the builder and call build()

  group(SeriesBooks, () {
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

    // The time (in ms since POSIX epoch) when added to the server.
    // int addedAt
    test('to test the property `addedAt`', () async {
      // TODO
    });

    // The name of the series with any prefix moved to the end.
    // String nameIgnorePrefix
    test('to test the property `nameIgnorePrefix`', () async {
      // TODO
    });

    // The name of the series with any prefix removed.
    // String nameIgnorePrefixSort
    test('to test the property `nameIgnorePrefixSort`', () async {
      // TODO
    });

    // Will always be `series`.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The library items that contain the books in the series. A sequence attribute that denotes the position in the series the book is in, is tacked on.
    // BuiltList<LibraryItemSequence> books
    test('to test the property `books`', () async {
      // TODO
    });

    // The combined duration (in seconds) of all books in the series.
    // num totalDuration
    test('to test the property `totalDuration`', () async {
      // TODO
    });
  });
}
