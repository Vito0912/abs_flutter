import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for NotificationApi
void main() {
  final instance = AbsApi().getNotificationApi();

  group(NotificationApi, () {
    // Update select notification settings
    //
    // Update the URL, max failed attempts, and maximum notifications that can be queued for Apprise.
    //
    //Future<String> configureNotificationSettings({ ConfigureNotificationSettingsRequest configureNotificationSettingsRequest }) async
    test('test configureNotificationSettings', () async {
      // TODO
    });

    // Create notification settings
    //
    // Create or update Notification settings.
    //
    //Future<CreateNotification200Response> createNotification({ CreateNotificationRequest createNotificationRequest }) async
    test('test createNotification', () async {
      // TODO
    });

    // Delete a notification
    //
    // Delete the notification by ID and return the notification settings.
    //
    //Future<CreateNotification200Response> deleteNotification(String id) async
    test('test deleteNotification', () async {
      // TODO
    });

    // Get notification event data
    //
    // Get all Apprise notification event data for the server.
    //
    //Future<GetNotifications200ResponseData> getNotificationEventData() async
    test('test getNotificationEventData', () async {
      // TODO
    });

    // Get notification settings
    //
    // Get all Apprise notification events and notification settings for server.
    //
    //Future<GetNotifications200Response> getNotifications() async
    test('test getNotifications', () async {
      // TODO
    });

    // Send general test notification
    //
    // Send a test notification.
    //
    //Future<String> sendDefaultTestNotification({ int fail }) async
    test('test sendDefaultTestNotification', () async {
      // TODO
    });

    // Send a test notification
    //
    // Send a test to the given notification by ID.
    //
    //Future<String> sendTestNotification(String id) async
    test('test sendTestNotification', () async {
      // TODO
    });

    // Update a notification
    //
    // Update an individual Notification by ID
    //
    //Future<CreateNotification200Response> updateNotification(String id, { UpdateNotificationRequest updateNotificationRequest }) async
    test('test updateNotification', () async {
      // TODO
    });
  });
}
