# abs_api.api.SessionApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeSession**](SessionApi.md#closesession) | **POST** /api/session/{id}/close | Close a listening session.
[**deleteSession**](SessionApi.md#deletesession) | **DELETE** /api/sessions/{id} | Delets a listening session.
[**getSession**](SessionApi.md#getsession) | **GET** /api/session/{id} | Get a listening session.
[**getSessions**](SessionApi.md#getsessions) | **GET** /api/sessions | Get all listening sessions.
[**syncOpenSession**](SessionApi.md#syncopensession) | **POST** /api/session/{id}/sync | Sync an open session.


# **closeSession**
> String closeSession(id, currentTime, timeListened, duration)

Close a listening session.

Close a listening session.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSessionApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the session.
final num currentTime = 8.14; // num | The current time of the session.
final num timeListened = 8.14; // num | The time listened to the session.
final num duration = 8.14; // num | The duration of the session.

try {
    final response = api.closeSession(id, currentTime, timeListened, duration);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->closeSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the session. | 
 **currentTime** | **num**| The current time of the session. | [optional] 
 **timeListened** | **num**| The time listened to the session. | [optional] 
 **duration** | **num**| The duration of the session. | [optional] 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSession**
> String deleteSession(id)

Delets a listening session.

Deletes a listening session.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSessionApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the session.

try {
    final response = api.deleteSession(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->deleteSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the session. | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
> PlaybackSessionExpanded getSession(id)

Get a listening session.

Get a listening session.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSessionApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the session.

try {
    final response = api.getSession(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->getSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the session. | 

### Return type

[**PlaybackSessionExpanded**](PlaybackSessionExpanded.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessions**
> GetSessions200Response getSessions(user, itemsPerPage, page)

Get all listening sessions.

Get all listening sessions.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSessionApi();
final String user = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the user to filter listening sessions by.
final int itemsPerPage = 56; // int | The number of items to return.
final int page = 56; // int | The page number (zero indexed) to return.

try {
    final response = api.getSessions(user, itemsPerPage, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->getSessions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| The ID of the user to filter listening sessions by. | [optional] 
 **itemsPerPage** | **int**| The number of items to return. | [optional] [default to 0]
 **page** | **int**| The page number (zero indexed) to return. | [optional] [default to 0]

### Return type

[**GetSessions200Response**](GetSessions200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncOpenSession**
> String syncOpenSession(id, syncOpenSessionRequest)

Sync an open session.

Sync an open session.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSessionApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the session.
final SyncOpenSessionRequest syncOpenSessionRequest = ; // SyncOpenSessionRequest | 

try {
    final response = api.syncOpenSession(id, syncOpenSessionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->syncOpenSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the session. | 
 **syncOpenSessionRequest** | [**SyncOpenSessionRequest**](SyncOpenSessionRequest.md)|  | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: html/text

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

