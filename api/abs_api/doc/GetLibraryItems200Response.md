# abs_api.model.GetLibraryItems200Response

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**BuiltList&lt;LibraryItemBase&gt;**](LibraryItemBase.md) |  | [optional] 
**total** | **int** | The total number of items in the response. | [optional] 
**limit** | **int** | The number of items to return. If 0, no items are returned. | [optional] [default to 0]
**page** | **int** | The page number (zero indexed) to return. If no limit is specified, then page will have no effect. | [optional] [default to 0]
**sortBy** | **String** | The field to sort by from the request. | [optional] 
**sortDesc** | **bool** | Whether to sort in descending order. | [optional] 
**filterBy** | **String** | The field to filter by from the request. TODO | [optional] 
**mediaType** | [**MediaType**](MediaType.md) |  | [optional] 
**minified** | **bool** | Return minified items if true. | [optional] [default to false]
**collapseSeries** | **bool** | Whether collapse series was set in the request. | [optional] 
**include** | **String** | The fields to include in the response. The only current option is `rssfeed`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


