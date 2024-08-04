# abs_api.model.Author

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the author. | [optional] 
**asin** | **String** | The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier. | [optional] 
**name** | **String** | The name of the author. | [optional] 
**description** | **String** | The new description of the author. | [optional] 
**imagePath** | **String** | The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image. | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**libraryItems** | [**BuiltList&lt;LibraryItemMinified&gt;**](LibraryItemMinified.md) | The items associated with the author | [optional] 
**series** | [**BuiltList&lt;AuthorSeries&gt;**](AuthorSeries.md) | The series associated with the author | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


