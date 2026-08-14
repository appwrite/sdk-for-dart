import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordHistory', () {
    test('model', () {
      final model = PolicyPasswordHistory(
        $id: 'password-dictionary',
        total: 5,
      );

      final map = model.toMap();
      final result = PolicyPasswordHistory.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.total, 5);
          });
  });
}
