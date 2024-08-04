# abs_api.model.GetAuthorImageByIdRequest

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**width** | **int** | The requested width of image in pixels. | [optional] [default to 400]
**height** | **int** | The requested height of image in pixels. If `null`, the height is scaled to maintain aspect ratio based on the requested width. | [optional] 
**format** | **String** | The requested output format. | [optional] [default to 'jpeg']
**raw** | **bool** | Return the raw image without scaling if true. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


