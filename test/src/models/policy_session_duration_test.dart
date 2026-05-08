import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicySessionDuration', () {
    test('model', () {
      final model = PolicySessionDuration(
        $id: 'password-dictionary',
        duration: 3600,
      );

      final map = model.toMap();
      final result = PolicySessionDuration.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.duration, 3600);
          });
  });
}
