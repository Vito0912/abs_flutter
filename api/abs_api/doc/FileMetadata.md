# abs_api.model.FileMetadata

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filename** | **String** | The filename of the file. | [optional] 
**ext** | **String** | The file extension of the file. | [optional] 
**path** | **String** | The absolute path on the server of the file. | [optional] 
**relPath** | **String** | The path of the file, relative to the book's or podcast's folder. | [optional] 
**size** | **int** | The total size (in bytes) of the item or file. | [optional] 
**mtimeMs** | **int** | The time (in ms since POSIX epoch) when the file was last modified on disk. | [optional] 
**ctimeMs** | **int** | The time (in ms since POSIX epoch) when the file status was changed on disk. | [optional] 
**birthtimeMs** | **int** | The time (in ms since POSIX epoch) when the file was created on disk. Will be 0 if unknown. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


