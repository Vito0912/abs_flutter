import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for ConfigureNotificationSettingsRequest
void main() {
  final instance = ConfigureNotificationSettingsRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ConfigureNotificationSettingsRequest, () {
    // The full URL where the Apprise API to use is located.
    // String appriseApiUrl
    test('to test the property `appriseApiUrl`', () async {
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
  });
}
