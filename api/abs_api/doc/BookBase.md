# abs_api.model.BookBase

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | TODO | [optional] 
**libraryItemId** | **String** | The ID of library items after 2.3.0. | [optional] 
**coverPath** | **String** | The absolute path on the server of the cover file. Will be null if there is no cover. | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Tags applied to items. | [optional] 
**audioFiles** | [**BuiltList&lt;AudioFile&gt;**](AudioFile.md) |  | [optional] 
**chapters** | [**BuiltList&lt;BookChapter&gt;**](BookChapter.md) |  | [optional] 
**missingParts** | **BuiltList&lt;int&gt;** | Any parts missing from the book by track index. | [optional] 
**ebookFile** | [**EbookFile**](EbookFile.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


