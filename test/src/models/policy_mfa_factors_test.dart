import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyMfaFactors', () {
    test('model', () {
      final model = PolicyMfaFactors(
        $id: 'password-dictionary',
        totp: true,
        email: true,
        phone: true,
        custom: true,
      );

      final map = model.toMap();
      final result = PolicyMfaFactors.fromMap(map);

      expect(result.$id, 'password-dictionary');
      expect(result.totp, true);
      expect(result.email, true);
      expect(result.phone, true);
      expect(result.custom, true);
    });
  });
}
