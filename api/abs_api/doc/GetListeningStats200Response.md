# abs_api.model.GetListeningStats200Response

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalTime** | **int** | The total time listened in seconds. | [optional] 
**items** | [**BuiltMap&lt;String, GetListeningStats200ResponseItemsValue&gt;**](GetListeningStats200ResponseItemsValue.md) | A list of library items the user has listened to, keyed by their item IDs. | [optional] 
**days** | **BuiltMap&lt;String, int&gt;** | A mapping of days to total listening times. | [optional] 
**dayOfWeek** | **BuiltMap&lt;String, int&gt;** | A mapping of days of the week to total listening times. | [optional] 
**today** | **int** | The time (in seconds) the user has listened to library items today. | [optional] 
**recentSessions** | [**BuiltList&lt;PlaybackSession&gt;**](PlaybackSession.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


