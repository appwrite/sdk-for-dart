import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyDenyDisposableEmail', () {
    test('model', () {
      final model = PolicyDenyDisposableEmail(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyDenyDisposableEmail.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.enabled, true);
          });
  });
}
