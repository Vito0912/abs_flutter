import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for LibraryItemBaseMedia
void main() {
  final instance = LibraryItemBaseMediaBuilder();
  // TODO add properties to the builder and call build()

  group(LibraryItemBaseMedia, () {
    // PodcastMetadata metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // The file path to the podcast's cover image.
    // String coverPath
    test('to test the property `coverPath`', () async {
      // TODO
    });

    // The tags associated with the podcast.
    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // The number of tracks (episodes) in the podcast.
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

    // The total duration of all episodes in seconds.
    // int duration
    test('to test the property `duration`', () async {
      // TODO
    });

    // The total size of all episodes in bytes.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // The format of ebook of the book. Will be null if the book is an audiobook.
    // String ebookFormat
    test('to test the property `ebookFormat`', () async {
      // TODO
    });

    // The ID of podcasts and podcast episodes after 2.3.0.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The ID of library items after 2.3.0.
    // String libraryItemId
    test('to test the property `libraryItemId`', () async {
      // TODO
    });

    // The episodes of the podcast.
    // BuiltList<PodcastEpisode> episodes
    test('to test the property `episodes`', () async {
      // TODO
    });

    // Whether episodes are automatically downloaded.
    // bool autoDownloadEpisodes
    test('to test the property `autoDownloadEpisodes`', () async {
      // TODO
    });

    // The schedule for automatic episode downloads, in cron format.
    // String autoDownloadSchedule
    test('to test the property `autoDownloadSchedule`', () async {
      // TODO
    });

    // The timestamp of the last episode check.
    // int lastEpisodeCheck
    test('to test the property `lastEpisodeCheck`', () async {
      // TODO
    });

    // The maximum number of episodes to keep.
    // int maxEpisodesToKeep
    test('to test the property `maxEpisodesToKeep`', () async {
      // TODO
    });

    // The maximum number of new episodes to download when automatically downloading epsiodes.
    // int maxNewEpisodesToDownload
    test('to test the property `maxNewEpisodesToDownload`', () async {
      // TODO
    });

    // The timestamp of the last cover search.
    // int lastCoverSearch
    test('to test the property `lastCoverSearch`', () async {
      // TODO
    });

    // The query used for the last cover search.
    // String lastCoverSearchQuery
    test('to test the property `lastCoverSearchQuery`', () async {
      // TODO
    });

    // The timestamp of the most recently published episode.
    // int latestEpisodePublished
    test('to test the property `latestEpisodePublished`', () async {
      // TODO
    });
  });
}
