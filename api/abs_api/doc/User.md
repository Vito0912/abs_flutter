# abs_api.model.User

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The ID of the user. | [optional] 
**username** | **String** | The username to log in with. | [optional] 
**type** | **String** | The type of the user. | [optional] 
**token** | **String** | The token of the user. | [optional] 
**mediaProgress** | [**BuiltList&lt;MediaProgress&gt;**](MediaProgress.md) | The user's progress of media. | [optional] 
**seriesHideFromContinueListening** | **BuiltList&lt;String&gt;** | The IDs of series to hide from the user's \"Continue Series\" shelf. | [optional] 
**bookmarks** | [**BuiltList&lt;Bookmark&gt;**](Bookmark.md) | The user's bookmarks. | [optional] 
**lastSeen** | **int** | The time (in ms since POSIX epoch) when the user was last seen. | [optional] 
**isActive** | **bool** | Whether the user is active. | [optional] 
**isLocked** | **bool** | Whether the user is locked. | [optional] 
**createdAt** | **int** | The time (in ms since POSIX epoch) when was created. | [optional] 
**permissions** | [**Permissions**](Permissions.md) |  | [optional] 
**librariesAccessible** | **BuiltList&lt;String&gt;** | The IDs of libraries the user has access to. | [optional] 
**itemTagsSelected** | **BuiltList&lt;String&gt;** | Tags applied to items. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


