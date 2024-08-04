# abs_api.model.LibrarySettings

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coverAspectRatio** | **int** | Whether the library should use square book covers. Must be 0 (for false) or 1 (for true). | [optional] 
**disableWatcher** | **bool** | Whether to disable the folder watcher for the library. | [optional] 
**skipMatchingMediaWithAsin** | **bool** | Whether to skip matching books that already have an ASIN. | [optional] 
**skipMatchingMediaWithIsbn** | **bool** | Whether to skip matching books that already have an ISBN. | [optional] 
**autoScanCronExpression** | **String** | The cron expression for when to automatically scan the library folders. If null, automatic scanning will be disabled. | [optional] 
**audiobooksOnly** | **bool** | Whether the library should ignore ebook files and only allow ebook files to be supplementary. | [optional] 
**hideSingleBookSeries** | **bool** | Whether to hide series with only one book. | [optional] 
**onlyShowLaterBooksInContinueSeries** | **bool** | Whether to only show books in a series after the highest series sequence. | [optional] 
**metadataPrecedence** | **BuiltList&lt;String&gt;** | The precedence of metadata sources. See Metadata Providers for a list of possible providers. | [optional] 
**podcastSearchRegion** | **String** | The region to use when searching for podcasts. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


