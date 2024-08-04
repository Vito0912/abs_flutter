import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for GetListeningStats200Response
void main() {
  final instance = GetListeningStats200ResponseBuilder();
  // TODO add properties to the builder and call build()

  group(GetListeningStats200Response, () {
    // The total time listened in seconds.
    // int totalTime
    test('to test the property `totalTime`', () async {
      // TODO
    });

    // A list of library items the user has listened to, keyed by their item IDs.
    // BuiltMap<String, GetListeningStats200ResponseItemsValue> items
    test('to test the property `items`', () async {
      // TODO
    });

    // A mapping of days to total listening times.
    // BuiltMap<String, int> days
    test('to test the property `days`', () async {
      // TODO
    });

    // A mapping of days of the week to total listening times.
    // BuiltMap<String, int> dayOfWeek
    test('to test the property `dayOfWeek`', () async {
      // TODO
    });

    // The time (in seconds) the user has listened to library items today.
    // int today
    test('to test the property `today`', () async {
      // TODO
    });

    // BuiltList<PlaybackSession> recentSessions
    test('to test the property `recentSessions`', () async {
      // TODO
    });
  });
}
