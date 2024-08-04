import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for AudioFile
void main() {
  final instance = AudioFileBuilder();
  // TODO add properties to the builder and call build()

  group(AudioFile, () {
    // The index of the audio file.
    // int index
    test('to test the property `index`', () async {
      // TODO
    });

    // The inode of the item in the file system.
    // String ino
    test('to test the property `ino`', () async {
      // TODO
    });

    // FileMetadata metadata
    test('to test the property `metadata`', () async {
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

    // The track number of the audio file as pulled from the file's metadata. Will be null if unknown.
    // int trackNumFromMeta
    test('to test the property `trackNumFromMeta`', () async {
      // TODO
    });

    // The disc number of the audio file as pulled from the file's metadata. Will be null if unknown.
    // String discNumFromMeta
    test('to test the property `discNumFromMeta`', () async {
      // TODO
    });

    // The track number of the audio file as determined from the file's name. Will be null if unknown.
    // int trackNumFromFilename
    test('to test the property `trackNumFromFilename`', () async {
      // TODO
    });

    // The disc number of the audio file as determined from the file's name. Will be null if unknown.
    // String discNumFromFilename
    test('to test the property `discNumFromFilename`', () async {
      // TODO
    });

    // Whether the audio file has been manually verified by a user.
    // bool manuallyVerified
    test('to test the property `manuallyVerified`', () async {
      // TODO
    });

    // Whether the audio file is missing from the server.
    // bool invalid
    test('to test the property `invalid`', () async {
      // TODO
    });

    // Whether the audio file has been marked for exclusion.
    // bool exclude
    test('to test the property `exclude`', () async {
      // TODO
    });

    // Any error with the audio file. Will be null if there is none.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // The format of the audio file.
    // String format
    test('to test the property `format`', () async {
      // TODO
    });

    // The total length (in seconds) of the item or file.
    // num duration
    test('to test the property `duration`', () async {
      // TODO
    });

    // The bit rate (in bit/s) of the audio file.
    // int bitRate
    test('to test the property `bitRate`', () async {
      // TODO
    });

    // The language of the audio file.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // The codec of the audio file.
    // String codec
    test('to test the property `codec`', () async {
      // TODO
    });

    // The time base of the audio file.
    // String timeBase
    test('to test the property `timeBase`', () async {
      // TODO
    });

    // The number of channels the audio file has.
    // int channels
    test('to test the property `channels`', () async {
      // TODO
    });

    // The layout of the audio file's channels.
    // String channelLayout
    test('to test the property `channelLayout`', () async {
      // TODO
    });

    // If the audio file is part of an audiobook, the chapters the file contains.
    // BuiltList<BookChapter> chapters
    test('to test the property `chapters`', () async {
      // TODO
    });

    // The type of embedded cover art in the audio file. Will be null if none exists.
    // String embeddedCoverArt
    test('to test the property `embeddedCoverArt`', () async {
      // TODO
    });

    // AudioMetaTags metaTags
    test('to test the property `metaTags`', () async {
      // TODO
    });

    // The MIME type of the audio file.
    // String mimeType
    test('to test the property `mimeType`', () async {
      // TODO
    });
  });
}
