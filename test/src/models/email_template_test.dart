import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EmailTemplate', () {
    test('model', () {
      final model = EmailTemplate(
        templateId: 'verification',
        locale: 'en_us',
        message: 'Click on the link to verify your account.',
        senderName: 'My User',
        senderEmail: 'mail@appwrite.io',
        replyToEmail: 'emails@appwrite.io',
        replyToName: 'Support Team',
        subject: 'Please verify your email address',
      );

      final map = model.toMap();
      final result = EmailTemplate.fromMap(map);

            expect(result.templateId, 'verification');
                  expect(result.locale, 'en_us');
                  expect(result.message, 'Click on the link to verify your account.');
                  expect(result.senderName, 'My User');
                  expect(result.senderEmail, 'mail@appwrite.io');
                  expect(result.replyToEmail, 'emails@appwrite.io');
                  expect(result.replyToName, 'Support Team');
                  expect(result.subject, 'Please verify your email address');
          });
  });
}
