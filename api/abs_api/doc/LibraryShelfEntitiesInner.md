# abs_api.model.LibraryShelfEntitiesInner

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the series. | [optional] 
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
**media** | [**Book**](Book.md) |  | [optional] 
**libraryFiles** | [**BuiltList&lt;LibraryFile&gt;**](LibraryFile.md) |  | [optional] 
**recentEpisode** | [**PodcastEpisode**](PodcastEpisode.md) |  | [optional] 
**name** | **String** | The name of the series. | [optional] 
**description** | **String** | A description for the series. Will be null if there is none. | [optional] 
**books** | [**BuiltList&lt;LibraryItemMinified&gt;**](LibraryItemMinified.md) |  | [optional] 
**inProgress** | **bool** | Whether the user has started listening to the series. | [optional] 
**hasActiveBook** | **bool** | Whether the user has started listening to the series, but has not finished it. | [optional] 
**hideFromContinueListening** | **bool** | Whether the series should be hidden from the continue listening section. | [optional] 
**bookInProgressLastUpdate** | **int** | An Integer, the time (in ms since POSIX epoch) when the book's progress was last updated. | [optional] 
**firstBookUnread** | [**LibraryItemMinified**](LibraryItemMinified.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


