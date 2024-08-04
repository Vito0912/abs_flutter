# abs_api.model.NotificationEvent

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the notification event. The names and allowable values are defined at https://github.com/advplyr/audiobookshelf/blob/master/server/utils/notifications.js | [optional] 
**requiresLibrary** | **bool** | Whether the notification event depends on a library existing. | [optional] 
**libraryMediaType** | **String** | The type of media of the library the notification depends on existing. Will not exist if requiresLibrary is false. | [optional] 
**description** | **String** | The description of the notification event. | [optional] 
**variables** | **BuiltList&lt;String&gt;** | The variables of the notification event that can be used in the notification templates. | [optional] 
**defaults** | [**NotificationEventDefaults**](NotificationEventDefaults.md) |  | [optional] 
**testData** | **BuiltMap&lt;String, String&gt;** | The keys of the testData object will match the list of variables. The values will be the data used when sending a test notification. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


