# abs_api.model.GetSessions200Response

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**BuiltList&lt;LibraryItemBase&gt;**](LibraryItemBase.md) |  | [optional] 
**total** | **int** | The total number of items in the response. | [optional] 
**itemsPerPage** | **int** | The number of items to return. If 0, no items are returned. | [optional] [default to 0]
**numPages** | **int** | The number of pages. | [optional] 
**userFilter** | [**JsonObject**](.md) | If provided, the `user` parameter. | [optional] 
**sessions** | [**BuiltList&lt;PlaybackSession&gt;**](PlaybackSession.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


