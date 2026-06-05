import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordStrength', () {
    test('model', () {
      final model = PolicyPasswordStrength(
        $id: 'password-dictionary',
        min: 12,
        uppercase: true,
        lowercase: true,
        number: true,
        symbols: true,
      );

      final map = model.toMap();
      final result = PolicyPasswordStrength.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.min, 12);
                  expect(result.uppercase, true);
                  expect(result.lowercase, true);
                  expect(result.number, true);
                  expect(result.symbols, true);
          });
  });
}
