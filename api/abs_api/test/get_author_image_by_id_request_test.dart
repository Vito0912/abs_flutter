import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for GetAuthorImageByIdRequest
void main() {
  final instance = GetAuthorImageByIdRequestBuilder();
  // TODO add properties to the builder and call build()

  group(GetAuthorImageByIdRequest, () {
    // The requested width of image in pixels.
    // int width (default value: 400)
    test('to test the property `width`', () async {
      // TODO
    });

    // The requested height of image in pixels. If `null`, the height is scaled to maintain aspect ratio based on the requested width.
    // int height
    test('to test the property `height`', () async {
      // TODO
    });

    // The requested output format.
    // String format (default value: 'jpeg')
    test('to test the property `format`', () async {
      // TODO
    });

    // Return the raw image without scaling if true.
    // bool raw (default value: false)
    test('to test the property `raw`', () async {
      // TODO
    });
  });
}
