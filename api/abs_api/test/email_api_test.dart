import 'package:test/test.dart';
import 'package:abs_api/abs_api.dart';

/// tests for EmailApi
void main() {
  final instance = AbsApi().getEmailApi();

  group(EmailApi, () {
    // Get email settings
    //
    // Get email settings for sending e-books to e-readers.
    //
    //Future<EmailSettings> getEmailSettings() async
    test('test getEmailSettings', () async {
      // TODO
    });

    // Send ebook to device
    //
    //Future sendEBookToDevice(SendEBookToDeviceRequest sendEBookToDeviceRequest) async
    test('test sendEBookToDevice', () async {
      // TODO
    });

    // Send test email
    //
    //Future sendTestEmail() async
    test('test sendTestEmail', () async {
      // TODO
    });

    // Update e-reader devices
    //
    //Future<UpdateEReaderDevicesRequest> updateEReaderDevices(UpdateEReaderDevicesRequest updateEReaderDevicesRequest) async
    test('test updateEReaderDevices', () async {
      // TODO
    });

    // Update email settings
    //
    //Future<EmailSettings> updateEmailSettings(EmailSettings emailSettings) async
    test('test updateEmailSettings', () async {
      // TODO
    });
  });
}
