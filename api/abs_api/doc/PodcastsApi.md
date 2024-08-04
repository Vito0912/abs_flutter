# abs_api.api.PodcastsApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreatePodcastsFromOpmlFeedUrls**](PodcastsApi.md#bulkcreatepodcastsfromopmlfeedurls) | **POST** /api/podcasts/opml/create | Bulk create podcasts from OPML feed URLs
[**checkNewEpisodes**](PodcastsApi.md#checknewepisodes) | **GET** /api/podcasts/{id}/checknew | Check and download new episodes
[**clearEpisodeDownloadQueue**](PodcastsApi.md#clearepisodedownloadqueue) | **GET** /api/podcasts/{id}/clear-queue | Clear episode download queue
[**createPodcast**](PodcastsApi.md#createpodcast) | **POST** /api/podcasts | Create a new podcast
[**downloadEpisodes**](PodcastsApi.md#downloadepisodes) | **POST** /api/podcasts/{id}/download-episodes | Download podcast episodes
[**findEpisode**](PodcastsApi.md#findepisode) | **GET** /api/podcasts/{id}/search-episode | Find episode by title
[**getEpisode**](PodcastsApi.md#getepisode) | **GET** /api/podcasts/{id}/episode/{episodeId} | Get a specific podcast episode
[**getEpisodeDownloads**](PodcastsApi.md#getepisodedownloads) | **GET** /api/podcasts/{id}/downloads | Get episode downloads
[**getFeedsFromOPMLText**](PodcastsApi.md#getfeedsfromopmltext) | **POST** /api/podcasts/opml/parse | Get feeds from OPML text
[**getPodcastFeed**](PodcastsApi.md#getpodcastfeed) | **POST** /api/podcasts/feed | Get podcast feed
[**quickMatchEpisodes**](PodcastsApi.md#quickmatchepisodes) | **POST** /api/podcasts/{id}/match-episodes | Quick match podcast episodes
[**removeEpisode**](PodcastsApi.md#removeepisode) | **DELETE** /api/podcasts/{id}/episode/{episodeId} | Remove a podcast episode
[**updateEpisode**](PodcastsApi.md#updateepisode) | **PATCH** /api/podcasts/{id}/episode/{episodeId} | Update a podcast episode


# **bulkCreatePodcastsFromOpmlFeedUrls**
> bulkCreatePodcastsFromOpmlFeedUrls(bulkCreatePodcastsFromOpmlFeedUrlsRequest)

Bulk create podcasts from OPML feed URLs

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final BulkCreatePodcastsFromOpmlFeedUrlsRequest bulkCreatePodcastsFromOpmlFeedUrlsRequest = ; // BulkCreatePodcastsFromOpmlFeedUrlsRequest | 

try {
    api.bulkCreatePodcastsFromOpmlFeedUrls(bulkCreatePodcastsFromOpmlFeedUrlsRequest);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->bulkCreatePodcastsFromOpmlFeedUrls: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkCreatePodcastsFromOpmlFeedUrlsRequest** | [**BulkCreatePodcastsFromOpmlFeedUrlsRequest**](BulkCreatePodcastsFromOpmlFeedUrlsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkNewEpisodes**
> CheckNewEpisodes200Response checkNewEpisodes(id, limit)

Check and download new episodes

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final int limit = 56; // int | Maximum number of episodes to download

try {
    final response = api.checkNewEpisodes(id, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->checkNewEpisodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **limit** | **int**| Maximum number of episodes to download | [optional] 

### Return type

[**CheckNewEpisodes200Response**](CheckNewEpisodes200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearEpisodeDownloadQueue**
> clearEpisodeDownloadQueue(id)

Clear episode download queue

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID

try {
    api.clearEpisodeDownloadQueue(id);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->clearEpisodeDownloadQueue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPodcast**
> Podcast createPodcast(podcast)

Create a new podcast

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final Podcast podcast = ; // Podcast | 

try {
    final response = api.createPodcast(podcast);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->createPodcast: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **podcast** | [**Podcast**](Podcast.md)|  | 

### Return type

[**Podcast**](Podcast.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadEpisodes**
> downloadEpisodes(id, requestBody)

Download podcast episodes

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.downloadEpisodes(id, requestBody);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->downloadEpisodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEpisode**
> CheckNewEpisodes200Response findEpisode(id, title)

Find episode by title

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final String title = title_example; // String | Title of the episode to search for

try {
    final response = api.findEpisode(id, title);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->findEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **title** | **String**| Title of the episode to search for | 

### Return type

[**CheckNewEpisodes200Response**](CheckNewEpisodes200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEpisode**
> PodcastEpisode getEpisode(id, episodeId)

Get a specific podcast episode

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final String episodeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Episode ID

try {
    final response = api.getEpisode(id, episodeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->getEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **episodeId** | **String**| Episode ID | 

### Return type

[**PodcastEpisode**](PodcastEpisode.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEpisodeDownloads**
> GetEpisodeDownloads200Response getEpisodeDownloads(id)

Get episode downloads

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID

try {
    final response = api.getEpisodeDownloads(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->getEpisodeDownloads: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 

### Return type

[**GetEpisodeDownloads200Response**](GetEpisodeDownloads200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeedsFromOPMLText**
> GetFeedsFromOPMLText200Response getFeedsFromOPMLText(getFeedsFromOPMLTextRequest)

Get feeds from OPML text

Parse OPML text and return an array of feeds

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final GetFeedsFromOPMLTextRequest getFeedsFromOPMLTextRequest = ; // GetFeedsFromOPMLTextRequest | 

try {
    final response = api.getFeedsFromOPMLText(getFeedsFromOPMLTextRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->getFeedsFromOPMLText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getFeedsFromOPMLTextRequest** | [**GetFeedsFromOPMLTextRequest**](GetFeedsFromOPMLTextRequest.md)|  | [optional] 

### Return type

[**GetFeedsFromOPMLText200Response**](GetFeedsFromOPMLText200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPodcastFeed**
> GetPodcastFeed200Response getPodcastFeed(getPodcastFeedRequest)

Get podcast feed

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final GetPodcastFeedRequest getPodcastFeedRequest = ; // GetPodcastFeedRequest | 

try {
    final response = api.getPodcastFeed(getPodcastFeedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->getPodcastFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getPodcastFeedRequest** | [**GetPodcastFeedRequest**](GetPodcastFeedRequest.md)|  | 

### Return type

[**GetPodcastFeed200Response**](GetPodcastFeed200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickMatchEpisodes**
> QuickMatchEpisodes200Response quickMatchEpisodes(id, override)

Quick match podcast episodes

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final String override = override_example; // String | Override existing details if set to 1

try {
    final response = api.quickMatchEpisodes(id, override);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->quickMatchEpisodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **override** | **String**| Override existing details if set to 1 | [optional] 

### Return type

[**QuickMatchEpisodes200Response**](QuickMatchEpisodes200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeEpisode**
> Podcast removeEpisode(id, episodeId, hard)

Remove a podcast episode

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final String episodeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Episode ID
final String hard = hard_example; // String | Hard delete the episode if set to 1

try {
    final response = api.removeEpisode(id, episodeId, hard);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->removeEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **episodeId** | **String**| Episode ID | 
 **hard** | **String**| Hard delete the episode if set to 1 | [optional] 

### Return type

[**Podcast**](Podcast.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEpisode**
> Podcast updateEpisode(id, episodeId, body)

Update a podcast episode

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getPodcastsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Podcast ID
final String episodeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Episode ID
final JsonObject body = Object; // JsonObject | 

try {
    final response = api.updateEpisode(id, episodeId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PodcastsApi->updateEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Podcast ID | 
 **episodeId** | **String**| Episode ID | 
 **body** | **JsonObject**|  | 

### Return type

[**Podcast**](Podcast.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

