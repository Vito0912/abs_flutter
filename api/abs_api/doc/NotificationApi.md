# abs_api.api.NotificationApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configureNotificationSettings**](NotificationApi.md#configurenotificationsettings) | **PATCH** /api/notifications | Update select notification settings
[**createNotification**](NotificationApi.md#createnotification) | **POST** /api/notifications | Create notification settings
[**deleteNotification**](NotificationApi.md#deletenotification) | **DELETE** /api/notifications/{id} | Delete a notification
[**getNotificationEventData**](NotificationApi.md#getnotificationeventdata) | **GET** /api/notificationdata | Get notification event data
[**getNotifications**](NotificationApi.md#getnotifications) | **GET** /api/notifications | Get notification settings
[**sendDefaultTestNotification**](NotificationApi.md#senddefaulttestnotification) | **GET** /api/notifications/test | Send general test notification
[**sendTestNotification**](NotificationApi.md#sendtestnotification) | **GET** /api/notifications/{id}/test | Send a test notification
[**updateNotification**](NotificationApi.md#updatenotification) | **PATCH** /api/notifications/{id} | Update a notification


# **configureNotificationSettings**
> String configureNotificationSettings(configureNotificationSettingsRequest)

Update select notification settings

Update the URL, max failed attempts, and maximum notifications that can be queued for Apprise.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final ConfigureNotificationSettingsRequest configureNotificationSettingsRequest = ; // ConfigureNotificationSettingsRequest | 

try {
    final response = api.configureNotificationSettings(configureNotificationSettingsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->configureNotificationSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configureNotificationSettingsRequest** | [**ConfigureNotificationSettingsRequest**](ConfigureNotificationSettingsRequest.md)|  | [optional] 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createNotification**
> CreateNotification200Response createNotification(createNotificationRequest)

Create notification settings

Create or update Notification settings.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final CreateNotificationRequest createNotificationRequest = ; // CreateNotificationRequest | 

try {
    final response = api.createNotification(createNotificationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->createNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createNotificationRequest** | [**CreateNotificationRequest**](CreateNotificationRequest.md)|  | [optional] 

### Return type

[**CreateNotification200Response**](CreateNotification200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNotification**
> CreateNotification200Response deleteNotification(id)

Delete a notification

Delete the notification by ID and return the notification settings.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final String id = id_example; // String | The ID of the notification.

try {
    final response = api.deleteNotification(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->deleteNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the notification. | 

### Return type

[**CreateNotification200Response**](CreateNotification200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationEventData**
> GetNotifications200ResponseData getNotificationEventData()

Get notification event data

Get all Apprise notification event data for the server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();

try {
    final response = api.getNotificationEventData();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->getNotificationEventData: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNotifications200ResponseData**](GetNotifications200ResponseData.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
> GetNotifications200Response getNotifications()

Get notification settings

Get all Apprise notification events and notification settings for server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();

try {
    final response = api.getNotifications();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->getNotifications: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNotifications200Response**](GetNotifications200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDefaultTestNotification**
> String sendDefaultTestNotification(fail)

Send general test notification

Send a test notification.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final int fail = 56; // int | Whether to intentionally cause the notification to fail. `0` for false, `1` for true.

try {
    final response = api.sendDefaultTestNotification(fail);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->sendDefaultTestNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fail** | **int**| Whether to intentionally cause the notification to fail. `0` for false, `1` for true. | [optional] 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestNotification**
> String sendTestNotification(id)

Send a test notification

Send a test to the given notification by ID.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final String id = id_example; // String | The ID of the notification.

try {
    final response = api.sendTestNotification(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->sendTestNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the notification. | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNotification**
> CreateNotification200Response updateNotification(id, updateNotificationRequest)

Update a notification

Update an individual Notification by ID

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getNotificationApi();
final String id = id_example; // String | The ID of the notification.
final UpdateNotificationRequest updateNotificationRequest = ; // UpdateNotificationRequest | 

try {
    final response = api.updateNotification(id, updateNotificationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificationApi->updateNotification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the notification. | 
 **updateNotificationRequest** | [**UpdateNotificationRequest**](UpdateNotificationRequest.md)|  | [optional] 

### Return type

[**CreateNotification200Response**](CreateNotification200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

