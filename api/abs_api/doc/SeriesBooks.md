# abs_api.model.SeriesBooks

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the series. | [optional] 
**name** | **String** | The name of the series. | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**nameIgnorePrefix** | **String** | The name of the series with any prefix moved to the end. | [optional] 
**nameIgnorePrefixSort** | **String** | The name of the series with any prefix removed. | [optional] 
**type** | **String** | Will always be `series`. | [optional] 
**books** | [**BuiltList&lt;LibraryItemSequence&gt;**](LibraryItemSequence.md) | The library items that contain the books in the series. A sequence attribute that denotes the position in the series the book is in, is tacked on. | [optional] 
**totalDuration** | **num** | The combined duration (in seconds) of all books in the series. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


