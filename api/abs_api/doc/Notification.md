# abs_api.model.Notification

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the notification. | [optional] 
**libraryId** | **String** | The ID of the library. Applies to all libraries if `null`. | [optional] 
**eventName** | [**NotificationEventName**](NotificationEventName.md) |  | [optional] 
**urls** | **BuiltList&lt;String&gt;** | The Apprise URLs to use for the notification. | [optional] 
**titleTemplate** | **String** | The template for the notification title. | [optional] 
**bodyTemplate** | **String** | The template for the notification body. | [optional] 
**enabled** | **bool** | Whether the notification is enabled. | [optional] [default to false]
**type** | [**NotificationType**](NotificationType.md) |  | [optional] 
**lastFiredAt** | **int** | The time (in ms since POSIX epoch) when the notification was last fired. Will be null if the notification has not fired. | [optional] 
**lastAttemptFailed** | **bool** | Whether the last notification attempt failed. | [optional] 
**numConsecutiveFailedAttempts** | **int** | The number of consecutive times the notification has failed. | [optional] [default to 0]
**numTimesFired** | **int** | The number of times the notification has fired. | [optional] [default to 0]
**createdAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


