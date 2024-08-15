# abs_api.model.SeriesShelf

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the series. | [optional] 
**name** | **String** | The name of the series. | [optional] 
**description** | **String** | A description for the series. Will be null if there is none. | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**books** | [**BuiltList&lt;LibraryItemMinified&gt;**](LibraryItemMinified.md) |  | [optional] 
**inProgress** | **bool** | Whether the user has started listening to the series. | [optional] 
**hasActiveBook** | **bool** | Whether the user has started listening to the series, but has not finished it. | [optional] 
**hideFromContinueListening** | **bool** | Whether the series should be hidden from the continue listening section. | [optional] 
**bookInProgressLastUpdate** | **int** | An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated. | [optional] 
**firstBookUnread** | [**LibraryItemMinified**](LibraryItemMinified.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


