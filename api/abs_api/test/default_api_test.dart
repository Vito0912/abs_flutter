import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for DefaultApi
void main() {
  final instance = AbsApi().getDefaultApi();

  group(DefaultApi, () {
    // Logs in a client to the server
    //
    // Logs in a client to the server, returning information about the user and server.
    //
    //Future<LoginPost200Response> loginPost(LoginPostRequest loginPostRequest) async
    test('test loginPost', () async {
      // TODO
    });

    // Logs out a client from the server
    //
    // Logs out a client from the server. If the socketId parameter is provided, the server removes the socket from the client list.
    //
    //Future logoutPost({ LogoutPostRequest logoutPostRequest }) async
    test('test logoutPost', () async {
      // TODO
    });
  });
}
