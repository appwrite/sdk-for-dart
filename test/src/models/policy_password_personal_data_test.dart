import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordPersonalData', () {
    test('model', () {
      final model = PolicyPasswordPersonalData(
        $id: 'password-dictionary',
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyPasswordPersonalData.fromMap(map);

            expect(result.$id, 'password-dictionary');
                  expect(result.enabled, true);
          });
  });
}
