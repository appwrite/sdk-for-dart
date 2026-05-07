import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicySessionAlert', () {
    test('model', () {
      final model = PolicySessionAlert(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicySessionAlert.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.enabled, true);
          });
  });
}
