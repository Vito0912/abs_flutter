# abs_api.model.MediaProgress

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the media progress. | [optional] 
**libraryItemId** | **String** | The ID of library items after 2.3.0. | [optional] 
**duration** | **num** | The total length (in seconds) of the item or file. | [optional] 
**progress** | **num** | The user's progress in the media item. | [optional] 
**currentTime** | **num** | The user's current time in the media item. | [optional] 
**isFinished** | **bool** | Whether the user has finished the media item. | [optional] 
**hideFromContinueListening** | **bool** | Whether the media item should be hidden from the continue listening section. | [optional] 
**lastUpdate** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**startedAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 
**finishedAt** | **int** | The time (in ms since POSIX epoch) when the media was finished. Will be null if the media has is not finished. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


