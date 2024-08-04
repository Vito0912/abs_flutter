# abs_api.model.NotificationSettings

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the notification. | [optional] 
**appriseType** | **String** | The type of Apprise that will be used. At the moment, only api is available. | [optional] 
**appriseApiUrl** | **String** | The full URL where the Apprise API to use is located. | [optional] 
**notifications** | [**BuiltList&lt;Notification&gt;**](Notification.md) | The set notifications. | [optional] 
**maxFailedAttempts** | **int** | The maximum number of times a notification fails before being disabled. | [optional] [default to 5]
**maxNotificationQueue** | **int** | The maximum number of notifications in the notification queue before events are ignored. | [optional] 
**notificationDelay** | **int** | The time (in ms) between notification pushes. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


