# abs_api.model.MediaMinified

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metadata** | [**BookMetadataMinified**](BookMetadataMinified.md) |  | [optional] 
**coverPath** | **String** | The absolute path on the server of the cover file. Will be null if there is no cover. | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Tags applied to items. | [optional] 
**numTracks** | **int** | The number of tracks the book's audio files have. | [optional] 
**numAudioFiles** | **int** | The number of audio files the book has. | [optional] 
**numChapters** | **int** | The number of chapters the book has. | [optional] 
**numMissingParts** | **int** | The total number of missing parts the book has. | [optional] 
**numInvalidAudioFiles** | **int** | The number of invalid audio files the book has. | [optional] 
**duration** | **num** | The total length (in seconds) of the item or file. | [optional] 
**size** | **int** | The total size (in bytes) of the item or file. | [optional] 
**ebookFormat** | **String** | The format of ebook of the book. Will be null if the book is an audiobook. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


