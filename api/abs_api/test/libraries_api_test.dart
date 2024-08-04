import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for LibrariesApi
void main() {
  final instance = AbsApi().getLibrariesApi();

  group(LibrariesApi, () {
    // Create a new library on server
    //
    // Create a new library on server.
    //
    //Future<ModelLibrary> createLibrary({ CreateLibraryRequest createLibraryRequest }) async
    test('test createLibrary', () async {
      // TODO
    });

    // Delete a single library by ID on server
    //
    // Delete a single library by ID on server and return the deleted object.
    //
    //Future<ModelLibrary> deleteLibraryById(String id) async
    test('test deleteLibraryById', () async {
      // TODO
    });

    // Delete items with issues in a library.
    //
    // Delete all items with issues in a library by library ID on the server. This only removes the items from the ABS database and does not delete media files.
    //
    //Future<String> deleteLibraryIssues(String id) async
    test('test deleteLibraryIssues', () async {
      // TODO
    });

    // Get all libraries on server
    //
    // Get all libraries on server.
    //
    //Future<GetLibraries200Response> getLibraries() async
    test('test getLibraries', () async {
      // TODO
    });

    // Get all authors in a library
    //
    // Get all authors in a library by ID on server.
    //
    //Future<GetLibraryAuthors200Response> getLibraryAuthors(String id) async
    test('test getLibraryAuthors', () async {
      // TODO
    });

    // Get a single library by ID on server
    //
    // Get a single library by ID on server.
    //
    //Future<ModelLibrary> getLibraryById(String id, { String include, int minified }) async
    test('test getLibraryById', () async {
      // TODO
    });

    // Get items in a library
    //
    // Get items in a library by ID on server.
    //
    //Future<GetLibraryItems200Response> getLibraryItems(String id, { int limit, int page, String sort, int desc, String filter, String include, int minified, int collapseSeries }) async
    test('test getLibraryItems', () async {
      // TODO
    });

    // Get library series
    //
    // Get series in a library. Filtering and sorting can be applied.
    //
    //Future<GetLibrarySeries200Response> getLibrarySeries(String id, { int limit, int page, String sort, int desc, String filter, String include, int minified }) async
    test('test getLibrarySeries', () async {
      // TODO
    });

    // Get single series in library
    //
    // Get a single series in a library by ID on server. This endpoint is deprecated and `/api/series/{id}` should be used instead.
    //
    //Future<SeriesWithProgressAndRSS> getLibrarySeriesById(String id, String seriesId, { int limit, int page, String sort, int desc, String filter, int minified, String include }) async
    test('test getLibrarySeriesById', () async {
      // TODO
    });

    // Update a single library by ID on server
    //
    // Update a single library by ID on server.
    //
    //Future<ModelLibrary> updateLibraryById(String id, UpdateLibraryByIdRequest updateLibraryByIdRequest) async
    test('test updateLibraryById', () async {
      // TODO
    });
  });
}
