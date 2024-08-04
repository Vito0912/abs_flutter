# abs_api.api.DefaultApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](DefaultApi.md#login) | **POST** /login | Login to the server
[**logout**](DefaultApi.md#logout) | **POST** /logout | Logout from the server


# **login**
> Login200Response login(loginRequest)

Login to the server

Logs in a client to the server, returning information about the user and server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getDefaultApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.login(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**Login200Response**](Login200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> Logout200Response logout(logoutRequest)

Logout from the server

Logs out a client from the server. If the socketId parameter is provided, the server removes the socket from the client list.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getDefaultApi();
final LogoutRequest logoutRequest = ; // LogoutRequest | 

try {
    final response = api.logout(logoutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->logout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logoutRequest** | [**LogoutRequest**](LogoutRequest.md)|  | 

### Return type

[**Logout200Response**](Logout200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

