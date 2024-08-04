# abs_api.model.ModelLibrary

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the library. | [optional] 
**name** | **String** | The name of the library. | [optional] 
**folders** | [**BuiltList&lt;Folder&gt;**](Folder.md) | The folders that belong to the library. | [optional] 
**displayOrder** | **int** | Display position of the library in the list of libraries. Must be >= 1. | [optional] 
**icon** | **String** | The selected icon for the library. See Library Icons for a list of possible icons. | [optional] 
**mediaType** | **String** | The type of media that the library contains. Will be `book` or `podcast`. (Read Only) | [optional] 
**provider** | **String** | Preferred metadata provider for the library. See Metadata Providers for a list of possible providers. | [optional] 
**settings** | [**LibrarySettings**](LibrarySettings.md) |  | [optional] 
**createdAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 
**lastUpdate** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


