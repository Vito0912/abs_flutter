# abs_api.model.LibraryItemExpanded

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of library items after 2.3.0. | [optional] 
**oldLibraryItemId** | **String** | The ID of library items on server version 2.2.23 and before. | [optional] 
**ino** | **String** | The inode of the item in the file system. | [optional] 
**libraryId** | **String** | The ID of the library. | [optional] 
**folderId** | **String** | The ID of the folder. | [optional] 
**path** | **String** | The path of the library item on the server. | [optional] 
**relPath** | **String** | The path, relative to the library folder, of the library item. | [optional] 
**isFile** | **bool** | Whether the library item is a single file in the root of the library folder. | [optional] 
**mtimeMs** | **int** | The time (in ms since POSIX epoch) when the library item was last modified on disk. | [optional] 
**ctimeMs** | **int** | The time (in ms since POSIX epoch) when the library item status was changed on disk. | [optional] 
**birthtimeMs** | **int** | The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown. | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**isMissing** | **bool** | Whether the library item was scanned and no longer exists. | [optional] 
**isInvalid** | **bool** | Whether the library item was scanned and no longer has media files. | [optional] 
**mediaType** | [**MediaType**](MediaType.md) |  | [optional] 
**media** | [**BookExpanded**](BookExpanded.md) |  | [optional] 
**size** | **int** | The total size (in bytes) of the item or file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


