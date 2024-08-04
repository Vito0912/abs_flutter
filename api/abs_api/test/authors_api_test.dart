import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for AuthorsApi
void main() {
  final instance = AbsApi().getAuthorsApi();

  group(AuthorsApi, () {
    // Add an author image to the server
    //
    // Add an author image to the server. The image will be downloaded from the provided URL and stored on the server.
    //
    //Future<Uint8List> addAuthorImageById(String id, String body, { String token, int ts }) async
    test('test addAuthorImageById', () async {
      // TODO
    });

    // Delete an author by ID
    //
    // Delete an author by ID. This will remove the author from all books.
    //
    //Future<String> deleteAuthorById(String id) async
    test('test deleteAuthorById', () async {
      // TODO
    });

    // Delete an author image by author ID
    //
    // Delete an author image by author ID. This will remove the image from the server and the database.
    //
    //Future deleteAuthorImageById(String id, { String token, int ts }) async
    test('test deleteAuthorImageById', () async {
      // TODO
    });

    // Get an author by ID
    //
    // Get an author by ID. The author's books and series can be included in the response.
    //
    //Future<Author> getAuthorById(String id, { String include }) async
    test('test getAuthorById', () async {
      // TODO
    });

    // Get an author image by author ID
    //
    // Get an author image by author ID. The image will be returned in the requested format and size.
    //
    //Future<Uint8List> getAuthorImageById(String id, { String token, int ts, GetAuthorImageByIdRequest getAuthorImageByIdRequest }) async
    test('test getAuthorImageById', () async {
      // TODO
    });

    // Match the author against Audible using quick match
    //
    // Match the author against Audible using quick match. Quick match updates the author's description and image (if no image already existed) with information from audible. Either `asin` or `q` must be provided, with `asin` taking priority if both are provided.
    //
    //Future<MatchAuthorById200Response> matchAuthorById(String id, MatchAuthorByIdRequest matchAuthorByIdRequest) async
    test('test matchAuthorById', () async {
      // TODO
    });

    // Update an author by ID
    //
    // Update an author by ID. The author's name and description can be updated. This endpoint will merge two authors if the new author name matches another author name in the database.
    //
    //Future<UpdateAuthorById200Response> updateAuthorById(String id, { UpdateAuthorByIdRequest updateAuthorByIdRequest }) async
    test('test updateAuthorById', () async {
      // TODO
    });

    // Update an author image by author ID
    //
    // Update an author image by author ID. The image will be resized if the width, height, or format is provided.
    //
    //Future<Uint8List> updateAuthorImageById(String id, { String token, int ts, GetAuthorImageByIdRequest getAuthorImageByIdRequest }) async
    test('test updateAuthorImageById', () async {
      // TODO
    });
  });
}
