# abs_api.api.MeApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListeningSessions**](MeApi.md#getlisteningsessions) | **GET** /api/me/listening-sessions | Get all listening sessions for the current user.
[**getListeningStats**](MeApi.md#getlisteningstats) | **GET** /api/me/listening-stats | Get listening stats for the current user.
[**getMe**](MeApi.md#getme) | **GET** /api/me | Get the current user.
[**getProgressLibraryItem**](MeApi.md#getprogresslibraryitem) | **GET** /api/me/progress/{libraryItemId} | Get the user&#39;s progress for a library item.
[**getProgressPodcastEpisode**](MeApi.md#getprogresspodcastepisode) | **GET** /api/me/progress/{libraryItemId}/{episodeId} | Get the user&#39;s progress for a podcast episode.


# **getListeningSessions**
> GetListeningSessions200Response getListeningSessions(itemsPerPage, page)

Get all listening sessions for the current user.

Get all listening sessions for the current user.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getMeApi();
final int itemsPerPage = 56; // int | The number of items per page.
final int page = 56; // int | The page number (zero indexed) to return.

try {
    final response = api.getListeningSessions(itemsPerPage, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->getListeningSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemsPerPage** | **int**| The number of items per page. | [default to 0]
 **page** | **int**| The page number (zero indexed) to return. | [default to 0]

### Return type

[**GetListeningSessions200Response**](GetListeningSessions200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListeningStats**
> GetListeningStats200Response getListeningStats()

Get listening stats for the current user.

Get listening stats for the current user.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getMeApi();

try {
    final response = api.getListeningStats();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->getListeningStats: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetListeningStats200Response**](GetListeningStats200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMe**
> User getMe()

Get the current user.

Get the current user.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getMeApi();

try {
    final response = api.getMe();
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->getMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgressLibraryItem**
> MediaProgress getProgressLibraryItem(libraryItemId)

Get the user's progress for a library item.

Get the user's progress for a library item.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getMeApi();
final String libraryItemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library item.

try {
    final response = api.getProgressLibraryItem(libraryItemId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->getProgressLibraryItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **libraryItemId** | **String**| The ID of the library item. | 

### Return type

[**MediaProgress**](MediaProgress.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgressPodcastEpisode**
> MediaProgressPodcastEpisode getProgressPodcastEpisode(libraryItemId, episodeId)

Get the user's progress for a podcast episode.

Get the user's progress for a podcast episode.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getMeApi();
final String libraryItemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library item.
final String episodeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the episode to get progress for.

try {
    final response = api.getProgressPodcastEpisode(libraryItemId, episodeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MeApi->getProgressPodcastEpisode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **libraryItemId** | **String**| The ID of the library item. | 
 **episodeId** | **String**| The ID of the episode to get progress for. | 

### Return type

[**MediaProgressPodcastEpisode**](MediaProgressPodcastEpisode.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

