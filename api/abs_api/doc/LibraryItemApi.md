# abs_api.api.LibraryItemApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLibraryItem**](LibraryItemApi.md#getlibraryitem) | **GET** /api/items/{id} | Get a single library item by ID on server.
[**playLibraryItem**](LibraryItemApi.md#playlibraryitem) | **POST** /api/items/{id}/play | Play a library item
[**playLibraryItemPodcastEpisode**](LibraryItemApi.md#playlibraryitempodcastepisode) | **POST** /api/items/{id}/play/{episodeId} | Play a podcast episode


# **getLibraryItem**
> GetLibraryItem200Response getLibraryItem(id, include, expanded, episode)

Get a single library item by ID on server.

Get a single library item by ID on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibraryItemApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library item.
final String include = include_example; // String | A comma separated list of what to include with the library item. The options are progress, rssfeed, authors (for books), and downloads (for podcasts). expanded must be 1 for include to have an effect.
final int expanded = 1; // int | Whether to return Library Item Expanded instead. 0 for false, 1 for true.
final String episode = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | If requesting progress for a podcast, the episode ID to get progress for.

try {
    final response = api.getLibraryItem(id, include, expanded, episode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibraryItemApi->getLibraryItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library item. | 
 **include** | **String**| A comma separated list of what to include with the library item. The options are progress, rssfeed, authors (for books), and downloads (for podcasts). expanded must be 1 for include to have an effect. | [optional] 
 **expanded** | **int**| Whether to return Library Item Expanded instead. 0 for false, 1 for true. | [optional] 
 **episode** | **String**| If requesting progress for a podcast, the episode ID to get progress for. | [optional] 

### Return type

[**GetLibraryItem200Response**](GetLibraryItem200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playLibraryItem**
> PlaybackSessionExpanded playLibraryItem(id, playLibraryItemRequest)

Play a library item

Play a library item by ID.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibraryItemApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library item.
final PlayLibraryItemRequest playLibraryItemRequest = ; // PlayLibraryItemRequest | 

try {
    final response = api.playLibraryItem(id, playLibraryItemRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibraryItemApi->playLibraryItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library item. | 
 **playLibraryItemRequest** | [**PlayLibraryItemRequest**](PlayLibraryItemRequest.md)|  | 

### Return type

[**PlaybackSessionExpanded**](PlaybackSessionExpanded.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playLibraryItemPodcastEpisode**
> PlaybackSessionExpanded playLibraryItemPodcastEpisode(id, episodeId, playLibraryItemRequest)

Play a podcast episode

Play a podcast by library item ID and episode ID.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibraryItemApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library item.
final String episodeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the episode to play.
final PlayLibraryItemRequest playLibraryItemRequest = ; // PlayLibraryItemRequest | 

try {
    final response = api.playLibraryItemPodcastEpisode(id, episodeId, playLibraryItemRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibraryItemApi->playLibraryItemPodcastEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library item. | 
 **episodeId** | **String**| The ID of the episode to play. | 
 **playLibraryItemRequest** | [**PlayLibraryItemRequest**](PlayLibraryItemRequest.md)|  | 

### Return type

[**PlaybackSessionExpanded**](PlaybackSessionExpanded.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

