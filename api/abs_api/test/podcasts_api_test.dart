import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for PodcastsApi
void main() {
  final instance = AbsApi().getPodcastsApi();

  group(PodcastsApi, () {
    // Bulk create podcasts from OPML feed URLs
    //
    //Future bulkCreatePodcastsFromOpmlFeedUrls({ BulkCreatePodcastsFromOpmlFeedUrlsRequest bulkCreatePodcastsFromOpmlFeedUrlsRequest }) async
    test('test bulkCreatePodcastsFromOpmlFeedUrls', () async {
      // TODO
    });

    // Check and download new episodes
    //
    //Future<CheckNewEpisodes200Response> checkNewEpisodes(String id, { int limit }) async
    test('test checkNewEpisodes', () async {
      // TODO
    });

    // Clear episode download queue
    //
    //Future clearEpisodeDownloadQueue(String id) async
    test('test clearEpisodeDownloadQueue', () async {
      // TODO
    });

    // Create a new podcast
    //
    //Future<Podcast> createPodcast(Podcast podcast) async
    test('test createPodcast', () async {
      // TODO
    });

    // Download podcast episodes
    //
    //Future downloadEpisodes(String id, BuiltList<String> requestBody) async
    test('test downloadEpisodes', () async {
      // TODO
    });

    // Find episode by title
    //
    //Future<CheckNewEpisodes200Response> findEpisode(String id, String title) async
    test('test findEpisode', () async {
      // TODO
    });

    // Get a specific podcast episode
    //
    //Future<PodcastEpisode> getEpisode(String id, String episodeId) async
    test('test getEpisode', () async {
      // TODO
    });

    // Get episode downloads
    //
    //Future<GetEpisodeDownloads200Response> getEpisodeDownloads(String id) async
    test('test getEpisodeDownloads', () async {
      // TODO
    });

    // Get feeds from OPML text
    //
    // Parse OPML text and return an array of feeds
    //
    //Future<GetFeedsFromOPMLText200Response> getFeedsFromOPMLText({ GetFeedsFromOPMLTextRequest getFeedsFromOPMLTextRequest }) async
    test('test getFeedsFromOPMLText', () async {
      // TODO
    });

    // Get podcast feed
    //
    //Future<GetPodcastFeed200Response> getPodcastFeed(GetPodcastFeedRequest getPodcastFeedRequest) async
    test('test getPodcastFeed', () async {
      // TODO
    });

    // Quick match podcast episodes
    //
    //Future<QuickMatchEpisodes200Response> quickMatchEpisodes(String id, { String override }) async
    test('test quickMatchEpisodes', () async {
      // TODO
    });

    // Remove a podcast episode
    //
    //Future<Podcast> removeEpisode(String id, String episodeId, { String hard }) async
    test('test removeEpisode', () async {
      // TODO
    });

    // Update a podcast episode
    //
    //Future<Podcast> updateEpisode(String id, String episodeId, JsonObject body) async
    test('test updateEpisode', () async {
      // TODO
    });
  });
}
