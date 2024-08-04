import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for SessionApi
void main() {
  final instance = AbsApi().getSessionApi();

  group(SessionApi, () {
    // Sync an open session.
    //
    // Sync an open session.
    //
    //Future<String> syncOpenSession(String id, num currentTime, num timeListened, num duration) async
    test('test syncOpenSession', () async {
      // TODO
    });
  });
}
