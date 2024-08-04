# abs_api.model.GetListeningStats200ResponseItemsValueMediaMetadata

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the podcast. | [optional] 
**subtitle** | **String** | The subtitle of the book. Will be null if there is no subtitle. | [optional] 
**genres** | **BuiltList&lt;String&gt;** | The genres of the podcast. | [optional] 
**publishedYear** | **String** | The year the book was published. Will be null if unknown. | [optional] 
**publishedDate** | **String** | The date the book was published. Will be null if unknown. | [optional] 
**publisher** | **String** | The publisher of the book. Will be null if unknown. | [optional] 
**description** | **String** | The description of the podcast. | [optional] 
**isbn** | **String** | The ISBN of the book. Will be null if unknown. | [optional] 
**asin** | **String** | The ASIN of the book. Will be null if unknown. | [optional] 
**language** | **String** | The language of the podcast. | [optional] 
**explicit** | **bool** | Whether the podcast contains explicit content. | [optional] 
**abridged** | **bool** | Whether the book is abridged. | [optional] 
**authors** | [**BuiltList&lt;AuthorMinified&gt;**](AuthorMinified.md) |  | [optional] 
**narrators** | **BuiltList&lt;String&gt;** |  | [optional] 
**series** | [**BuiltList&lt;SeriesSequence&gt;**](SeriesSequence.md) |  | [optional] 
**author** | **String** | The author of the podcast. | [optional] 
**releaseDate** | [**DateTime**](DateTime.md) | The release date of the podcast. | [optional] 
**feedUrl** | **String** | The URL of the podcast feed. | [optional] 
**imageUrl** | **String** | The URL of the podcast's image. | [optional] 
**itunesPageUrl** | **String** | The URL of the podcast's iTunes page. | [optional] 
**itunesId** | **String** | The iTunes ID of the podcast. | [optional] 
**itunesArtistId** | **String** | The iTunes artist ID of the podcast. | [optional] 
**type** | **String** | The type of podcast (e.g., episodic, serial). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


