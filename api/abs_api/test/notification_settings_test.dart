import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for NotificationSettings
void main() {
  final instance = NotificationSettingsBuilder();
  // TODO add properties to the builder and call build()

  group(NotificationSettings, () {
    // The ID of the notification.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of Apprise that will be used. At the moment, only api is available.
    // String appriseType
    test('to test the property `appriseType`', () async {
      // TODO
    });

    // The full URL where the Apprise API to use is located.
    // String appriseApiUrl
    test('to test the property `appriseApiUrl`', () async {
      // TODO
    });

    // The set notifications.
    // BuiltList<Notification> notifications
    test('to test the property `notifications`', () async {
      // TODO
    });

    // The maximum number of times a notification fails before being disabled.
    // int maxFailedAttempts (default value: 5)
    test('to test the property `maxFailedAttempts`', () async {
      // TODO
    });

    // The maximum number of notifications in the notification queue before events are ignored.
    // int maxNotificationQueue
    test('to test the property `maxNotificationQueue`', () async {
      // TODO
    });

    // The time (in ms) between notification pushes.
    // int notificationDelay
    test('to test the property `notificationDelay`', () async {
      // TODO
    });
  });
}
