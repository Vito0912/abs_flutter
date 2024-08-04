import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

// tests for EmailSettings
void main() {
  final instance = EmailSettingsBuilder();
  // TODO add properties to the builder and call build()

  group(EmailSettings, () {
    // The unique identifier for the email settings. Currently this is always `email-settings`
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The port number for the SMTP server.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // Indicates if the connection should use SSL/TLS.
    // bool secure
    test('to test the property `secure`', () async {
      // TODO
    });

    // List of configured e-reader devices.
    // BuiltList<EreaderDeviceObject> ereaderDevices
    test('to test the property `ereaderDevices`', () async {
      // TODO
    });

    // The SMTP host address.
    // String host
    test('to test the property `host`', () async {
      // TODO
    });

    // Indicates if unauthorized SSL/TLS certificates should be rejected.
    // bool rejectUnauthorized
    test('to test the property `rejectUnauthorized`', () async {
      // TODO
    });

    // The username for SMTP authentication.
    // String user
    test('to test the property `user`', () async {
      // TODO
    });

    // The password for SMTP authentication.
    // String pass
    test('to test the property `pass`', () async {
      // TODO
    });

    // The test email address used for sending test emails.
    // String testAddress
    test('to test the property `testAddress`', () async {
      // TODO
    });

    // The default \"from\" email address for outgoing emails.
    // String fromAddress
    test('to test the property `fromAddress`', () async {
      // TODO
    });
  });
}
