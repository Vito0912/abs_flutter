# abs_api.model.BookMetadata

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title of the book. Will be null if unknown. | [optional] 
**subtitle** | **String** | The subtitle of the book. Will be null if there is no subtitle. | [optional] 
**genres** | **BuiltList&lt;String&gt;** | The genres of the book. | [optional] 
**publishedYear** | **String** | The year the book was published. Will be null if unknown. | [optional] 
**publishedDate** | **String** | The date the book was published. Will be null if unknown. | [optional] 
**publisher** | **String** | The publisher of the book. Will be null if unknown. | [optional] 
**description** | **String** | A description for the book. Will be null if empty. | [optional] 
**isbn** | **String** | The ISBN of the book. Will be null if unknown. | [optional] 
**asin** | **String** | The ASIN of the book. Will be null if unknown. | [optional] 
**language** | **String** | The language of the book. Will be null if unknown. | [optional] 
**explicit** | **bool** | Whether the book has been marked as explicit. | [optional] 
**abridged** | **bool** | Whether the book is abridged. | [optional] 
**authorName** | **String** | The name of the author. | [optional] 
**narratorName** | **String** | The name of the book's narrator(s). | [optional] 
**seriesName** | **String** | The name of the series. | [optional] 
**authors** | [**BuiltList&lt;AuthorMinified&gt;**](AuthorMinified.md) |  | [optional] 
**narrators** | **BuiltList&lt;String&gt;** |  | [optional] 
**series** | [**BuiltList&lt;SeriesSequence&gt;**](SeriesSequence.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


