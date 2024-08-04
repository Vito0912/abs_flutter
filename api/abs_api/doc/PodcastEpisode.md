# abs_api.model.PodcastEpisode

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**libraryItemId** | **String** | The ID of library items after 2.3.0. | [optional] 
**podcastId** | **String** | The ID of podcasts and podcast episodes after 2.3.0. | [optional] 
**id** | **String** | The ID of podcasts and podcast episodes after 2.3.0. | [optional] 
**oldEpisodeId** | **String** | The ID of podcasts on server version 2.2.23 and before. | [optional] 
**index** | **int** | The index of the episode within the podcast. | [optional] 
**season** | **String** | The season number of the episode. | [optional] 
**episode** | **String** | The episode number within the season. | [optional] 
**episodeType** | **String** | The type of episode (e.g., full, trailer). | [optional] 
**title** | **String** | The title of the episode. | [optional] 
**subtitle** | **String** | The subtitle of the episode. | [optional] 
**description** | **String** | The description of the episode. | [optional] 
**enclosure** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | The enclosure object containing additional episode data. | [optional] 
**guid** | **String** | The globally unique identifier for the episode. | [optional] 
**pubDate** | **String** | The publication date of the episode. | [optional] 
**chapters** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | The chapters within the episode. | [optional] 
**audioFile** | [**AudioFile**](AudioFile.md) |  | [optional] 
**publishedAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 
**addedAt** | **int** | The time (in ms since POSIX epoch) when added to the server. | [optional] 
**updatedAt** | **int** | The time (in ms since POSIX epoch) when last updated. | [optional] 
**audioTrack** | [**AudioTrack**](AudioTrack.md) |  | [optional] 
**duration** | **num** | The total length (in seconds) of the item or file. | [optional] 
**size** | **int** | The total size (in bytes) of the item or file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


