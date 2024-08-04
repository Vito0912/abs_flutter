# abs_api.model.UpdateNotificationRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**libraryId** | **String** | The ID of the library. | [optional] 
**eventName** | [**NotificationEventName**](NotificationEventName.md) |  | [optional] 
**urls** | **BuiltList&lt;String&gt;** | The Apprise URLs to use for the notification. | [optional] 
**titleTemplate** | **String** | The template for the notification title. | [optional] 
**bodyTemplate** | **String** | The template for the notification body. | [optional] 
**enabled** | **bool** | Whether the notification is enabled. | [optional] [default to false]
**type** | [**NotificationType**](NotificationType.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


