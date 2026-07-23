import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyDenyCorporateEmail', () {
    test('model', () {
      final model = PolicyDenyCorporateEmail(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyDenyCorporateEmail.fromMap(map);

      expect(result.$id, 'password-dictionary');
      expect(result.enabled, true);
    });
  });
}
