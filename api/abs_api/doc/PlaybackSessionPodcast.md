# abs_api.model.PlaybackSessionPodcast

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The playback session identifier. | [optional] 
**userId** | **String** | The ID of the user. | [optional] 
**libraryId** | **String** | The ID of the library. | [optional] 
**libraryItemId** | **String** | The ID of library items after 2.3.0. | [optional] 
**mediaType** | [**MediaType**](MediaType.md) |  | [optional] 
**displayTitle** | **String** | The display title of the media. | [optional] 
**displayAuthor** | **String** | The display author of the media. | [optional] 
**coverPath** | **String** | The absolute path on the server of the cover file. Will be null if there is no cover. | [optional] 
**duration** | **num** | The total length (in seconds) of the item or file. | [optional] 
**playMethod** | **int** | The method used to play the media. 0 = Direct play, 1 = Direct Stream, 2 = Transcode, 3 = Local | [optional] 
**mediaPlayer** | **String** | The media player used to play the media. | [optional] 
**deviceInfo** | [**DeviceInfo**](DeviceInfo.md) |  | [optional] 
**serverVersion** | **String** | The server version | [optional] 
**date** | **String** | TODO | [optional] 
**dayOfWeek** | **String** | TODO | [optional] 
**timeListening** | **num** | The total length (in seconds) of the item or file. | [optional] 
**startTime** | **num** | The total length (in seconds) of the item or file. | [optional] 
**currentTime** | **num** | The total length (in seconds) of the item or file. | [optional] 
**createdAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**mediaMetadata** | [**PodcastMetadata**](PodcastMetadata.md) |  | [optional] 
**episodeId** | **String** | The ID of podcasts and podcast episodes after 2.3.0. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


