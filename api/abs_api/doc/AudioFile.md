# abs_api.model.AudioFile

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** | The index of the audio file. | [optional] 
**ino** | **String** | The inode of the item in the file system. | [optional] 
**metadata** | [**FileMetadata**](FileMetadata.md) |  | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**trackNumFromMeta** | **int** | The track number of the audio file as pulled from the file's metadata. Will be null if unknown. | [optional] 
**discNumFromMeta** | **String** | The disc number of the audio file as pulled from the file's metadata. Will be null if unknown. | [optional] 
**trackNumFromFilename** | **int** | The track number of the audio file as determined from the file's name. Will be null if unknown. | [optional] 
**discNumFromFilename** | **String** | The disc number of the audio file as determined from the file's name. Will be null if unknown. | [optional] 
**manuallyVerified** | **bool** | Whether the audio file has been manually verified by a user. | [optional] 
**invalid** | **bool** | Whether the audio file is missing from the server. | [optional] 
**exclude** | **bool** | Whether the audio file has been marked for exclusion. | [optional] 
**error** | **String** | Any error with the audio file. Will be null if there is none. | [optional] 
**format** | **String** | The format of the audio file. | [optional] 
**duration** | **num** | The total length (in seconds) of the item or file. | [optional] 
**bitRate** | **int** | The bit rate (in bit/s) of the audio file. | [optional] 
**language** | **String** | The language of the audio file. | [optional] 
**codec** | **String** | The codec of the audio file. | [optional] 
**timeBase** | **String** | The time base of the audio file. | [optional] 
**channels** | **int** | The number of channels the audio file has. | [optional] 
**channelLayout** | **String** | The layout of the audio file's channels. | [optional] 
**chapters** | [**BuiltList&lt;BookChapter&gt;**](BookChapter.md) | If the audio file is part of an audiobook, the chapters the file contains. | [optional] 
**embeddedCoverArt** | **String** | The type of embedded cover art in the audio file. Will be null if none exists. | [optional] 
**metaTags** | [**AudioMetaTags**](AudioMetaTags.md) |  | [optional] 
**mimeType** | **String** | The MIME type of the audio file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


