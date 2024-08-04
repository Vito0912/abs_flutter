# abs_api.model.UpdateLibraryByIdRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the library. | [optional] 
**folders** | [**BuiltList&lt;Folder&gt;**](Folder.md) | The folders of the library. Only specify the fullPath. | [optional] 
**displayOrder** | **int** | The display order of the library. Must be >= 1. | [optional] 
**icon** | **String** | The icon of the library. See Library Icons for a list of possible icons. | [optional] 
**mediaType** | **String** | The type of media that the library contains. Must be `book` or `podcast`. | [optional] 
**provider** | **String** | Preferred metadata provider for the library. See Metadata Providers for a list of possible providers. | [optional] 
**settings** | [**LibrarySettings**](LibrarySettings.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


