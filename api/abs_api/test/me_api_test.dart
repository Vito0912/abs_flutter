import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for MeApi
void main() {
  final instance = AbsApi().getMeApi();

  group(MeApi, () {
    // Get the current user.
    //
    // Get the current user.
    //
    //Future<User> getMe() async
    test('test getMe', () async {
      // TODO
    });

    // Get the user's progress for a library item.
    //
    // Get the user's progress for a library item.
    //
    //Future<MediaProgress> getProgress(String libraryItemId, { String episodeId }) async
    test('test getProgress', () async {
      // TODO
    });

    // Get the user's progress for a media item.
    //
    // Get the user's progress for a media item.
    //
    //Future<MediaProgress> getProgressById(String mediaId) async
    test('test getProgressById', () async {
      // TODO
    });
  });
}
