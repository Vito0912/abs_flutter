import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for Notification
void main() {
  final instance = NotificationBuilder();
  // TODO add properties to the builder and call build()

  group(Notification, () {
    // The ID of the notification.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The ID of the library. Applies to all libraries if `null`.
    // String libraryId
    test('to test the property `libraryId`', () async {
      // TODO
    });

    // NotificationEventName eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // The Apprise URLs to use for the notification.
    // BuiltList<String> urls
    test('to test the property `urls`', () async {
      // TODO
    });

    // The template for the notification title.
    // String titleTemplate
    test('to test the property `titleTemplate`', () async {
      // TODO
    });

    // The template for the notification body.
    // String bodyTemplate
    test('to test the property `bodyTemplate`', () async {
      // TODO
    });

    // Whether the notification is enabled.
    // bool enabled (default value: false)
    test('to test the property `enabled`', () async {
      // TODO
    });

    // NotificationType type
    test('to test the property `type`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when the notification was last fired. Will be null if the notification has not fired.
    // int lastFiredAt
    test('to test the property `lastFiredAt`', () async {
      // TODO
    });

    // Whether the last notification attempt failed.
    // bool lastAttemptFailed
    test('to test the property `lastAttemptFailed`', () async {
      // TODO
    });

    // The number of consecutive times the notification has failed.
    // int numConsecutiveFailedAttempts (default value: 0)
    test('to test the property `numConsecutiveFailedAttempts`', () async {
      // TODO
    });

    // The number of times the notification has fired.
    // int numTimesFired (default value: 0)
    test('to test the property `numTimesFired`', () async {
      // TODO
    });

    // The time (in ms since POSIX epoch) when was created.
    // int createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });
  });
}
