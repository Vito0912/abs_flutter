# abs_api.api.LibrariesApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLibrary**](LibrariesApi.md#createlibrary) | **POST** /api/libraries | Create a new library on server
[**deleteLibraryById**](LibrariesApi.md#deletelibrarybyid) | **DELETE** /api/libraries/{id} | Delete a single library by ID on server
[**deleteLibraryIssues**](LibrariesApi.md#deletelibraryissues) | **DELETE** /api/libraries/{id}/issues | Delete items with issues in a library.
[**getLibraries**](LibrariesApi.md#getlibraries) | **GET** /api/libraries | Get all libraries on server
[**getLibraryAuthors**](LibrariesApi.md#getlibraryauthors) | **GET** /api/libraries/{id}/authors | Get all authors in a library
[**getLibraryById**](LibrariesApi.md#getlibrarybyid) | **GET** /api/libraries/{id} | Get a single library by ID on server
[**getLibraryItems**](LibrariesApi.md#getlibraryitems) | **GET** /api/libraries/{id}/items | Get items in a library
[**getLibrarySeries**](LibrariesApi.md#getlibraryseries) | **GET** /api/libraries/{id}/series | Get library series
[**getLibrarySeriesById**](LibrariesApi.md#getlibraryseriesbyid) | **GET** /api/libraries/{id}/series/{seriesId} | Get single series in library
[**updateLibraryById**](LibrariesApi.md#updatelibrarybyid) | **PATCH** /api/libraries/{id} | Update a single library by ID on server


# **createLibrary**
> ModelLibrary createLibrary(createLibraryRequest)

Create a new library on server

Create a new library on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final CreateLibraryRequest createLibraryRequest = ; // CreateLibraryRequest | The library object to create.

try {
    final response = api.createLibrary(createLibraryRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->createLibrary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createLibraryRequest** | [**CreateLibraryRequest**](CreateLibraryRequest.md)| The library object to create. | [optional] 

### Return type

[**ModelLibrary**](ModelLibrary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLibraryById**
> ModelLibrary deleteLibraryById(id)

Delete a single library by ID on server

Delete a single library by ID on server and return the deleted object.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.

try {
    final response = api.deleteLibraryById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->deleteLibraryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 

### Return type

[**ModelLibrary**](ModelLibrary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLibraryIssues**
> String deleteLibraryIssues(id)

Delete items with issues in a library.

Delete all items with issues in a library by library ID on the server. This only removes the items from the ABS database and does not delete media files.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.

try {
    final response = api.deleteLibraryIssues(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->deleteLibraryIssues: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 

### Return type

**String**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraries**
> GetLibraries200Response getLibraries()

Get all libraries on server

Get all libraries on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();

try {
    final response = api.getLibraries();
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibraries: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetLibraries200Response**](GetLibraries200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryAuthors**
> GetLibraryAuthors200Response getLibraryAuthors(id)

Get all authors in a library

Get all authors in a library by ID on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.

try {
    final response = api.getLibraryAuthors(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibraryAuthors: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 

### Return type

[**GetLibraryAuthors200Response**](GetLibraryAuthors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryById**
> ModelLibrary getLibraryById(id, include, minified)

Get a single library by ID on server

Get a single library by ID on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.
final String include = include_example; // String | A comma separated list of what to include with the library item. The only current option is filterdata.
final int minified = 1; // int | Return minified items if true

try {
    final response = api.getLibraryById(id, include, minified);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibraryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 
 **include** | **String**| A comma separated list of what to include with the library item. The only current option is filterdata. | [optional] 
 **minified** | **int**| Return minified items if true | [optional] 

### Return type

[**ModelLibrary**](ModelLibrary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryItems**
> GetLibraryItems200Response getLibraryItems(id, limit, page, sort, desc, filter, include, minified, collapseSeries)

Get items in a library

Get items in a library by ID on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.
final int limit = 10; // int | The number of items to return. This the size of a single page for the optional `page` query.
final int page = 0; // int | The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
final String sort = numBooks; // String | The field to sort by from the request.
final int desc = 0; // int | Return items in reversed order if true.
final String filter = media.metadata.title; // String | The filter for the library.
final String include = rssfeed; // String | The fields to include in the response. The only current option is `rssfeed`.
final int minified = 1; // int | Return minified items if true
final int collapseSeries = 56; // int | Whether to collapse series into a single cover

try {
    final response = api.getLibraryItems(id, limit, page, sort, desc, filter, include, minified, collapseSeries);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibraryItems: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 
 **limit** | **int**| The number of items to return. This the size of a single page for the optional `page` query. | [optional] [default to 0]
 **page** | **int**| The page number (zero indexed) to return. If no limit is specified, then page will have no effect. | [optional] [default to 0]
 **sort** | **String**| The field to sort by from the request. | [optional] [default to 'name']
 **desc** | **int**| Return items in reversed order if true. | [optional] [default to 0]
 **filter** | **String**| The filter for the library. | [optional] 
 **include** | **String**| The fields to include in the response. The only current option is `rssfeed`. | [optional] 
 **minified** | **int**| Return minified items if true | [optional] 
 **collapseSeries** | **int**| Whether to collapse series into a single cover | [optional] [default to 0]

### Return type

[**GetLibraryItems200Response**](GetLibraryItems200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibrarySeries**
> GetLibrarySeries200Response getLibrarySeries(id, limit, page, sort, desc, filter, include, minified)

Get library series

Get series in a library. Filtering and sorting can be applied.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.
final int limit = 10; // int | The number of items to return. This the size of a single page for the optional `page` query.
final int page = 0; // int | The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
final String sort = numBooks; // String | The field to sort by from the request.
final int desc = 0; // int | Return items in reversed order if true.
final String filter = media.metadata.title; // String | The filter for the library.
final String include = rssfeed; // String | The fields to include in the response. The only current option is `rssfeed`.
final int minified = 1; // int | Return minified items if true

try {
    final response = api.getLibrarySeries(id, limit, page, sort, desc, filter, include, minified);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibrarySeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 
 **limit** | **int**| The number of items to return. This the size of a single page for the optional `page` query. | [optional] [default to 0]
 **page** | **int**| The page number (zero indexed) to return. If no limit is specified, then page will have no effect. | [optional] [default to 0]
 **sort** | **String**| The field to sort by from the request. | [optional] [default to 'name']
 **desc** | **int**| Return items in reversed order if true. | [optional] [default to 0]
 **filter** | **String**| The filter for the library. | [optional] 
 **include** | **String**| The fields to include in the response. The only current option is `rssfeed`. | [optional] 
 **minified** | **int**| Return minified items if true | [optional] 

### Return type

[**GetLibrarySeries200Response**](GetLibrarySeries200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibrarySeriesById**
> SeriesWithProgressAndRSS getLibrarySeriesById(id, seriesId, limit, page, sort, desc, filter, minified, include)

Get single series in library

Get a single series in a library by ID on server. This endpoint is deprecated and `/api/series/{id}` should be used instead.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.
final String seriesId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the series.
final int limit = 10; // int | The number of items to return. This the size of a single page for the optional `page` query.
final int page = 0; // int | The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
final String sort = numBooks; // String | The field to sort by from the request.
final int desc = 0; // int | Return items in reversed order if true.
final String filter = media.metadata.title; // String | The filter for the library.
final int minified = 1; // int | Return minified items if true
final String include = rssfeed; // String | The fields to include in the response. The only current option is `rssfeed`.

try {
    final response = api.getLibrarySeriesById(id, seriesId, limit, page, sort, desc, filter, minified, include);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->getLibrarySeriesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 
 **seriesId** | **String**| The ID of the series. | 
 **limit** | **int**| The number of items to return. This the size of a single page for the optional `page` query. | [optional] [default to 0]
 **page** | **int**| The page number (zero indexed) to return. If no limit is specified, then page will have no effect. | [optional] [default to 0]
 **sort** | **String**| The field to sort by from the request. | [optional] [default to 'name']
 **desc** | **int**| Return items in reversed order if true. | [optional] [default to 0]
 **filter** | **String**| The filter for the library. | [optional] 
 **minified** | **int**| Return minified items if true | [optional] 
 **include** | **String**| The fields to include in the response. The only current option is `rssfeed`. | [optional] 

### Return type

[**SeriesWithProgressAndRSS**](SeriesWithProgressAndRSS.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLibraryById**
> ModelLibrary updateLibraryById(id, updateLibraryByIdRequest)

Update a single library by ID on server

Update a single library by ID on server.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getLibrariesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the library.
final UpdateLibraryByIdRequest updateLibraryByIdRequest = ; // UpdateLibraryByIdRequest | The library object to update.

try {
    final response = api.updateLibraryById(id, updateLibraryByIdRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LibrariesApi->updateLibraryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the library. | 
 **updateLibraryByIdRequest** | [**UpdateLibraryByIdRequest**](UpdateLibraryByIdRequest.md)| The library object to update. | 

### Return type

[**ModelLibrary**](ModelLibrary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

