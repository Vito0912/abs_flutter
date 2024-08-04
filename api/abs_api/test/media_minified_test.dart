import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for MediaMinified
void main() {
  final instance = MediaMinifiedBuilder();
  // TODO add properties to the builder and call build()

  group(MediaMinified, () {
    // BookMetadataMinified metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // The absolute path on the server of the cover file. Will be null if there is no cover.
    // String coverPath
    test('to test the property `coverPath`', () async {
      // TODO
    });

    // Tags applied to items.
    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // The number of tracks the book's audio files have.
    // int numTracks
    test('to test the property `numTracks`', () async {
      // TODO
    });

    // The number of audio files the book has.
    // int numAudioFiles
    test('to test the property `numAudioFiles`', () async {
      // TODO
    });

    // The number of chapters the book has.
    // int numChapters
    test('to test the property `numChapters`', () async {
      // TODO
    });

    // The total number of missing parts the book has.
    // int numMissingParts
    test('to test the property `numMissingParts`', () async {
      // TODO
    });

    // The number of invalid audio files the book has.
    // int numInvalidAudioFiles
    test('to test the property `numInvalidAudioFiles`', () async {
      // TODO
    });

    // The total length (in seconds) of the item or file.
    // num duration
    test('to test the property `duration`', () async {
      // TODO
    });

    // The total size (in bytes) of the item or file.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // The format of ebook of the book. Will be null if the book is an audiobook.
    // String ebookFormat
    test('to test the property `ebookFormat`', () async {
      // TODO
    });
  });
}
