# abs_api.api.SeriesApi

## Load the API package
```dart
import 'package:abs_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSeries**](SeriesApi.md#getseries) | **GET** /api/series/{id} | Get series
[**updateSeries**](SeriesApi.md#updateseries) | **PATCH** /api/series/{id} | Update series


# **getSeries**
> SeriesWithProgressAndRSS getSeries(id, getSeriesRequest)

Get series

Get a series by ID.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSeriesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the series.
final GetSeriesRequest getSeriesRequest = ; // GetSeriesRequest | A comma separated list of what to include with the series.

try {
    final response = api.getSeries(id, getSeriesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->getSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the series. | 
 **getSeriesRequest** | [**GetSeriesRequest**](GetSeriesRequest.md)| A comma separated list of what to include with the series. | [optional] 

### Return type

[**SeriesWithProgressAndRSS**](SeriesWithProgressAndRSS.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSeries**
> Series updateSeries(id, updateSeriesRequest)

Update series

Update a series by ID.

### Example
```dart
import 'package:abs_api/api.dart';

final api = AbsApi().getSeriesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The ID of the series.
final UpdateSeriesRequest updateSeriesRequest = ; // UpdateSeriesRequest | The series to update.

try {
    final response = api.updateSeries(id, updateSeriesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SeriesApi->updateSeries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The ID of the series. | 
 **updateSeriesRequest** | [**UpdateSeriesRequest**](UpdateSeriesRequest.md)| The series to update. | 

### Return type

[**Series**](Series.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

