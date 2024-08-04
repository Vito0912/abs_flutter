# abs_api.api.AuthorsApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAuthorImageById**](AuthorsApi.md#addauthorimagebyid) | **POST** /api/authors/{id}/image | Add an author image to the server
[**deleteAuthorById**](AuthorsApi.md#deleteauthorbyid) | **DELETE** /api/authors/{id} | Delete an author by ID
[**deleteAuthorImageById**](AuthorsApi.md#deleteauthorimagebyid) | **DELETE** /api/authors/{id}/image | Delete an author image by author ID
[**getAuthorById**](AuthorsApi.md#getauthorbyid) | **GET** /api/authors/{id} | Get an author by ID
[**getAuthorImageById**](AuthorsApi.md#getauthorimagebyid) | **GET** /api/authors/{id}/image | Get an author image by author ID
[**matchAuthorById**](AuthorsApi.md#matchauthorbyid) | **POST** /api/authors/{id}/match | Match the author against Audible using quick match
[**updateAuthorById**](AuthorsApi.md#updateauthorbyid) | **PATCH** /api/authors/{id} | Update an author by ID
[**updateAuthorImageById**](AuthorsApi.md#updateauthorimagebyid) | **PATCH** /api/authors/{id}/image | Update an author image by author ID


# **addAuthorImageById**
> Uint8List addAuthorImageById(id, body, token, ts)

Add an author image to the server

Add an author image to the server. The image will be downloaded from the provided URL and stored on the server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final String body = https://openapi-generator.tech; // String | The author image to add by URL.
final String token = token_example; // String | API token
final int ts = 56; // int | Updated at value

try {
    final response = api.addAuthorImageById(id, body, token, ts);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->addAuthorImageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **body** | **String**| The author image to add by URL. | 
 **token** | **String**| API token | [optional] 
 **ts** | **int**| Updated at value | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: image/*, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthorById**
> String deleteAuthorById(id)

Delete an author by ID

Delete an author by ID. This will remove the author from all books.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID

try {
    final response = api.deleteAuthorById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->deleteAuthorById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAuthorImageById**
> deleteAuthorImageById(id, token, ts)

Delete an author image by author ID

Delete an author image by author ID. This will remove the image from the server and the database.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final String token = token_example; // String | API token
final int ts = 56; // int | Updated at value

try {
    api.deleteAuthorImageById(id, token, ts);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->deleteAuthorImageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **token** | **String**| API token | [optional] 
 **ts** | **int**| Updated at value | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorById**
> Author getAuthorById(id, include)

Get an author by ID

Get an author by ID. The author's books and series can be included in the response.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final String include = items,series; // String | A comma separated list of what to include with the author. The options are `items` and `series`. `series` will only have an effect if `items` is included. For example, the value `items,series` will include both library items and series.

try {
    final response = api.getAuthorById(id, include);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->getAuthorById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **include** | **String**| A comma separated list of what to include with the author. The options are `items` and `series`. `series` will only have an effect if `items` is included. For example, the value `items,series` will include both library items and series. | [optional] 

### Return type

[**Author**](Author.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthorImageById**
> Uint8List getAuthorImageById(id, token, ts, getAuthorImageByIdRequest)

Get an author image by author ID

Get an author image by author ID. The image will be returned in the requested format and size.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final String token = token_example; // String | API token
final int ts = 56; // int | Updated at value
final GetAuthorImageByIdRequest getAuthorImageByIdRequest = ; // GetAuthorImageByIdRequest | The author image to get.

try {
    final response = api.getAuthorImageById(id, token, ts, getAuthorImageByIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->getAuthorImageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **token** | **String**| API token | [optional] 
 **ts** | **int**| Updated at value | [optional] 
 **getAuthorImageByIdRequest** | [**GetAuthorImageByIdRequest**](GetAuthorImageByIdRequest.md)| The author image to get. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: image/webp, image/jpeg, image/*, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **matchAuthorById**
> MatchAuthorById200Response matchAuthorById(id, matchAuthorByIdRequest)

Match the author against Audible using quick match

Match the author against Audible using quick match. Quick match updates the author's description and image (if no image already existed) with information from audible. Either `asin` or `q` must be provided, with `asin` taking priority if both are provided.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final MatchAuthorByIdRequest matchAuthorByIdRequest = ; // MatchAuthorByIdRequest | The author object to match against an online provider.

try {
    final response = api.matchAuthorById(id, matchAuthorByIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->matchAuthorById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **matchAuthorByIdRequest** | [**MatchAuthorByIdRequest**](MatchAuthorByIdRequest.md)| The author object to match against an online provider. | 

### Return type

[**MatchAuthorById200Response**](MatchAuthorById200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthorById**
> UpdateAuthorById200Response updateAuthorById(id, updateAuthorByIdRequest)

Update an author by ID

Update an author by ID. The author's name and description can be updated. This endpoint will merge two authors if the new author name matches another author name in the database.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final UpdateAuthorByIdRequest updateAuthorByIdRequest = ; // UpdateAuthorByIdRequest | The author object to update.

try {
    final response = api.updateAuthorById(id, updateAuthorByIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->updateAuthorById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **updateAuthorByIdRequest** | [**UpdateAuthorByIdRequest**](UpdateAuthorByIdRequest.md)| The author object to update. | [optional] 

### Return type

[**UpdateAuthorById200Response**](UpdateAuthorById200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAuthorImageById**
> Uint8List updateAuthorImageById(id, token, ts, getAuthorImageByIdRequest)

Update an author image by author ID

Update an author image by author ID. The image will be resized if the width, height, or format is provided.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getAuthorsApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Author ID
final String token = token_example; // String | API token
final int ts = 56; // int | Updated at value
final GetAuthorImageByIdRequest getAuthorImageByIdRequest = ; // GetAuthorImageByIdRequest | The author image to update.

try {
    final response = api.updateAuthorImageById(id, token, ts, getAuthorImageByIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthorsApi->updateAuthorImageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Author ID | 
 **token** | **String**| API token | [optional] 
 **ts** | **int**| Updated at value | [optional] 
 **getAuthorImageByIdRequest** | [**GetAuthorImageByIdRequest**](GetAuthorImageByIdRequest.md)| The author image to update. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: image/*, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

