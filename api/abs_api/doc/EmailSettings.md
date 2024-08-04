# abs_api.model.EmailSettings

## Load the model package
```dart
import 'package:abs_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for the email settings. Currently this is always `email-settings` | 
**port** | **int** | The port number for the SMTP server. | 
**secure** | **bool** | Indicates if the connection should use SSL/TLS. | 
**ereaderDevices** | [**BuiltList&lt;EreaderDeviceObject&gt;**](EreaderDeviceObject.md) | List of configured e-reader devices. | 
**host** | **String** | The SMTP host address. | [optional] 
**rejectUnauthorized** | **bool** | Indicates if unauthorized SSL/TLS certificates should be rejected. | [optional] 
**user** | **String** | The username for SMTP authentication. | [optional] 
**pass** | **String** | The password for SMTP authentication. | [optional] 
**testAddress** | **String** | The test email address used for sending test emails. | [optional] 
**fromAddress** | **String** | The default \"from\" email address for outgoing emails. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


