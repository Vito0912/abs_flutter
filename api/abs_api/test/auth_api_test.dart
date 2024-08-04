import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for AuthApi
void main() {
  final instance = AbsApi().getAuthApi();

  group(AuthApi, () {
    // Login to the server
    //
    // Logs in a client to the server, returning information about the user and server.
    //
    //Future<Login200Response> login(LoginRequest loginRequest) async
    test('test login', () async {
      // TODO
    });

    // Logout from the server
    //
    // Logs out a client from the server. If the socketId parameter is provided, the server removes the socket from the client list.
    //
    //Future<Logout200Response> logout(LogoutRequest logoutRequest) async
    test('test logout', () async {
      // TODO
    });
  });
}
