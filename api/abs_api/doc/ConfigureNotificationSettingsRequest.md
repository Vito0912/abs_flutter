# abs_api.model.ConfigureNotificationSettingsRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appriseApiUrl** | **String** | The full URL where the Apprise API to use is located. | [optional] 
**maxFailedAttempts** | **int** | The maximum number of times a notification fails before being disabled. | [optional] [default to 5]
**maxNotificationQueue** | **int** | The maximum number of notifications in the notification queue before events are ignored. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


