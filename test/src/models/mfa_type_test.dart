import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MfaType', () {
    test('model', () {
      final model = MfaType(
        secret: '[SHARED_SECRET]',
        uri: 'otpauth://totp/appwrite:user@example.com?secret=[SHARED_SECRET]&issuer=appwrite',
      );

      final map = model.toMap();
      final result = MfaType.fromMap(map);

            expect(result.secret, '[SHARED_SECRET]');
                  expect(result.uri, 'otpauth://totp/appwrite:user@example.com?secret=[SHARED_SECRET]&issuer=appwrite');
          });
  });
}
