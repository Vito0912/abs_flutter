# abs_api.model.CreateNotificationRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventName** | [**NotificationEventName**](NotificationEventName.md) |  | 
**urls** | **BuiltList&lt;String&gt;** | The Apprise URLs to use for the notification. | 
**titleTemplate** | **String** | The template for the notification title. | 
**bodyTemplate** | **String** | The template for the notification body. | 
**libraryId** | **String** | The ID of the library. Applies to all libraries if `null`. | [optional] 
**enabled** | **bool** | Whether the notification is enabled. | [optional] [default to false]
**type** | [**NotificationType**](NotificationType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


