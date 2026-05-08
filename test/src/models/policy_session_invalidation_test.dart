import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicySessionInvalidation', () {
    test('model', () {
      final model = PolicySessionInvalidation(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicySessionInvalidation.fromMap(map);

      expect(result.$id, 'password-dictionary');
      expect(result.enabled, true);
    });
  });
}
