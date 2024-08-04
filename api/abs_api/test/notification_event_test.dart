import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for NotificationEvent
void main() {
  final instance = NotificationEventBuilder();
  // TODO add properties to the builder and call build()

  group(NotificationEvent, () {
    // The name of the notification event. The names and allowable values are defined at https://github.com/advplyr/audiobookshelf/blob/master/server/utils/notifications.js
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Whether the notification event depends on a library existing.
    // bool requiresLibrary
    test('to test the property `requiresLibrary`', () async {
      // TODO
    });

    // The type of media of the library the notification depends on existing. Will not exist if requiresLibrary is false.
    // String libraryMediaType
    test('to test the property `libraryMediaType`', () async {
      // TODO
    });

    // The description of the notification event.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The variables of the notification event that can be used in the notification templates.
    // BuiltList<String> variables
    test('to test the property `variables`', () async {
      // TODO
    });

    // NotificationEventDefaults defaults
    test('to test the property `defaults`', () async {
      // TODO
    });

    // The keys of the testData object will match the list of variables. The values will be the data used when sending a test notification.
    // BuiltMap<String, String> testData
    test('to test the property `testData`', () async {
      // TODO
    });
  });
}
