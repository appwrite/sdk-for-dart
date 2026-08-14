import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordDictionary', () {
    test('model', () {
      final model = PolicyPasswordDictionary(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyPasswordDictionary.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.enabled, true);
          });
  });
}
