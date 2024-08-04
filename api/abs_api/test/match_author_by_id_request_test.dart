import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for MatchAuthorByIdRequest
void main() {
  final instance = MatchAuthorByIdRequestBuilder();
  // TODO add properties to the builder and call build()

  group(MatchAuthorByIdRequest, () {
    // The name of the author to use for searching.
    // String q
    test('to test the property `q`', () async {
      // TODO
    });

    // The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
    // String asin
    test('to test the property `asin`', () async {
      // TODO
    });

    // The region used to search.
    // String region (default value: 'us')
    test('to test the property `region`', () async {
      // TODO
    });
  });
}
