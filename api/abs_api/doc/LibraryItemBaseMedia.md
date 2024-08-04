# abs_api.model.LibraryItemBaseMedia

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**PodcastMetadata**](PodcastMetadata.md) |  | [optional] 
**coverPath** | **String** | The file path to the podcast's cover image. | [optional] 
**tags** | **BuiltList&lt;String&gt;** | The tags associated with the podcast. | [optional] 
**numTracks** | **int** | The number of tracks (episodes) in the podcast. | [optional] 
**numAudioFiles** | **int** | The number of audio files the book has. | [optional] 
**numChapters** | **int** | The number of chapters the book has. | [optional] 
**numMissingParts** | **int** | The total number of missing parts the book has. | [optional] 
**numInvalidAudioFiles** | **int** | The number of invalid audio files the book has. | [optional] 
**duration** | **int** | The total duration of all episodes in seconds. | [optional] 
**size** | **int** | The total size of all episodes in bytes. | [optional] 
**ebookFormat** | **String** | The format of ebook of the book. Will be null if the book is an audiobook. | [optional] 
**id** | **String** | The ID of podcasts and podcast episodes after 2.3.0. | [optional] 
**libraryItemId** | **String** | The ID of library items after 2.3.0. | [optional] 
**episodes** | [**BuiltList&lt;PodcastEpisode&gt;**](PodcastEpisode.md) | The episodes of the podcast. | [optional] 
**autoDownloadEpisodes** | **bool** | Whether episodes are automatically downloaded. | [optional] 
**autoDownloadSchedule** | **String** | The schedule for automatic episode downloads, in cron format. | [optional] 
**lastEpisodeCheck** | **int** | The timestamp of the last episode check. | [optional] 
**maxEpisodesToKeep** | **int** | The maximum number of episodes to keep. | [optional] 
**maxNewEpisodesToDownload** | **int** | The maximum number of new episodes to download when automatically downloading epsiodes. | [optional] 
**lastCoverSearch** | **int** | The timestamp of the last cover search. | [optional] 
**lastCoverSearchQuery** | **String** | The query used for the last cover search. | [optional] 
**latestEpisodePublished** | **int** | The timestamp of the most recently published episode. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


