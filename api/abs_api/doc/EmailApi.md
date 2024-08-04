# abs_api.api.EmailApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailSettings**](EmailApi.md#getemailsettings) | **GET** /api/emails/settings | Get email settings
[**sendEBookToDevice**](EmailApi.md#sendebooktodevice) | **POST** /api/emails/send-ebook-to-device | Send ebook to device
[**sendTestEmail**](EmailApi.md#sendtestemail) | **POST** /api/emails/test | Send test email
[**updateEReaderDevices**](EmailApi.md#updateereaderdevices) | **POST** /api/emails/ereader-devices | Update e-reader devices
[**updateEmailSettings**](EmailApi.md#updateemailsettings) | **PATCH** /api/emails/settings | Update email settings


# **getEmailSettings**
> EmailSettings getEmailSettings()

Get email settings

Get email settings for sending e-books to e-readers.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getEmailApi();

try {
    final response = api.getEmailSettings();
    print(response);
} catch on DioException (e) {
    print('Exception when calling EmailApi->getEmailSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailSettings**](EmailSettings.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEBookToDevice**
> sendEBookToDevice(sendEBookToDeviceRequest)

Send ebook to device

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getEmailApi();
final SendEBookToDeviceRequest sendEBookToDeviceRequest = ; // SendEBookToDeviceRequest | 

try {
    api.sendEBookToDevice(sendEBookToDeviceRequest);
} catch on DioException (e) {
    print('Exception when calling EmailApi->sendEBookToDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEBookToDeviceRequest** | [**SendEBookToDeviceRequest**](SendEBookToDeviceRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestEmail**
> sendTestEmail()

Send test email

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getEmailApi();

try {
    api.sendTestEmail();
} catch on DioException (e) {
    print('Exception when calling EmailApi->sendTestEmail: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEReaderDevices**
> UpdateEReaderDevicesRequest updateEReaderDevices(updateEReaderDevicesRequest)

Update e-reader devices

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getEmailApi();
final UpdateEReaderDevicesRequest updateEReaderDevicesRequest = ; // UpdateEReaderDevicesRequest | 

try {
    final response = api.updateEReaderDevices(updateEReaderDevicesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EmailApi->updateEReaderDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateEReaderDevicesRequest** | [**UpdateEReaderDevicesRequest**](UpdateEReaderDevicesRequest.md)|  | 

### Return type

[**UpdateEReaderDevicesRequest**](UpdateEReaderDevicesRequest.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmailSettings**
> EmailSettings updateEmailSettings(emailSettings)

Update email settings

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getEmailApi();
final EmailSettings emailSettings = ; // EmailSettings | 

try {
    final response = api.updateEmailSettings(emailSettings);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EmailApi->updateEmailSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailSettings** | [**EmailSettings**](EmailSettings.md)|  | 

### Return type

[**EmailSettings**](EmailSettings.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

