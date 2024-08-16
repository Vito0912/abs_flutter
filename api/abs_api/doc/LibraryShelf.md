# abs_api.model.LibraryShelf

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID (Name) of the shelf. | [optional] 
**label** | **String** | The label of the shelf. | [optional] 
**labelStringKey** | **String** | The localization key for the label. | [optional] 
**type** | **String** | The type of items the shelf contains. | [optional] 
**category** | **String** | The category of the shelf. | [optional] 
**entities** | [**BuiltList&lt;LibraryShelfEntitiesInner&gt;**](LibraryShelfEntitiesInner.md) | TODO! I use allOf, because of my programming language , buts a oneOf. It still works with allOf but you will have entries that are not always available. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


