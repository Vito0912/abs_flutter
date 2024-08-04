import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for GetLibraryItems200Response
void main() {
  final instance = GetLibraryItems200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(GetLibraryItems200Response, () {
    // BuiltList<LibraryItemBase> results
    test('to test the property `results`', () async {
      // TODO
    });

    // The total number of items in the response.
    // int total
    test('to test the property `total`', () async {
      // TODO
    });

    // The number of items to return. If 0, no items are returned.
    // int limit (default value: 0)
    test('to test the property `limit`', () async {
      // TODO
    });

    // The page number (zero indexed) to return. If no limit is specified, then page will have no effect.
    // int page (default value: 0)
    test('to test the property `page`', () async {
      // TODO
    });

    // The field to sort by from the request.
    // String sortBy
    test('to test the property `sortBy`', () async {
      // TODO
    });

    // Whether to sort in descending order.
    // bool sortDesc
    test('to test the property `sortDesc`', () async {
      // TODO
    });

    // The field to filter by from the request. TODO
    // String filterBy
    test('to test the property `filterBy`', () async {
      // TODO
    });

    // MediaType mediaType
    test('to test the property `mediaType`', () async {
      // TODO
    });

    // Return minified items if true.
    // bool minified (default value: false)
    test('to test the property `minified`', () async {
      // TODO
    });

    // Whether collapse series was set in the request.
    // bool collapseSeries
    test('to test the property `collapseSeries`', () async {
      // TODO
    });

    // The fields to include in the response. The only current option is `rssfeed`.
    // String include
    test('to test the property `include`', () async {
      // TODO
    });
  });
}
