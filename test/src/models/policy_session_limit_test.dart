import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicySessionLimit', () {
    test('model', () {
      final model = PolicySessionLimit(
        $id: 'password-dictionary',
        total: 10,
      );

      final map = model.toMap();
      final result = PolicySessionLimit.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.total, 10);
          });
  });
}
