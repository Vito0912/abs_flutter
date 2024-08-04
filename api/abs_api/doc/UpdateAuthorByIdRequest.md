# abs_api.model.UpdateAuthorByIdRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the author. | [optional] 
**description** | **String** | The new description of the author. | [optional] 
**imagePath** | **String** | The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image. | [optional] 
**asin** | **String** | The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


