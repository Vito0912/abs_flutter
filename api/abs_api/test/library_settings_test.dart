import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for LibrarySettings
void main() {
  final instance = LibrarySettingsBuilder();
  // TODO add properties to the builder and call build()

  group(LibrarySettings, () {
    // Whether the library should use square book covers. Must be 0 (for false) or 1 (for true).
    // int coverAspectRatio
    test('to test the property `coverAspectRatio`', () async {
      // TODO
    });

    // Whether to disable the folder watcher for the library.
    // bool disableWatcher
    test('to test the property `disableWatcher`', () async {
      // TODO
    });

    // Whether to skip matching books that already have an ASIN.
    // bool skipMatchingMediaWithAsin
    test('to test the property `skipMatchingMediaWithAsin`', () async {
      // TODO
    });

    // Whether to skip matching books that already have an ISBN.
    // bool skipMatchingMediaWithIsbn
    test('to test the property `skipMatchingMediaWithIsbn`', () async {
      // TODO
    });

    // The cron expression for when to automatically scan the library folders. If null, automatic scanning will be disabled.
    // String autoScanCronExpression
    test('to test the property `autoScanCronExpression`', () async {
      // TODO
    });

    // Whether the library should ignore ebook files and only allow ebook files to be supplementary.
    // bool audiobooksOnly
    test('to test the property `audiobooksOnly`', () async {
      // TODO
    });

    // Whether to hide series with only one book.
    // bool hideSingleBookSeries
    test('to test the property `hideSingleBookSeries`', () async {
      // TODO
    });

    // Whether to only show books in a series after the highest series sequence.
    // bool onlyShowLaterBooksInContinueSeries
    test('to test the property `onlyShowLaterBooksInContinueSeries`', () async {
      // TODO
    });

    // The precedence of metadata sources. See Metadata Providers for a list of possible providers.
    // BuiltList<String> metadataPrecedence
    test('to test the property `metadataPrecedence`', () async {
      // TODO
    });

    // The region to use when searching for podcasts.
    // String podcastSearchRegion
    test('to test the property `podcastSearchRegion`', () async {
      // TODO
    });
  });
}
