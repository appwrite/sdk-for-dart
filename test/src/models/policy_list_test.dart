import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyList', () {
    test('model', () {
      final model = PolicyList(
        total: 9,
        policies: [],
      );

      final map = model.toMap();
      final result = PolicyList.fromMap(map);

            expect(result.total, 9);
                  expect(result.policies, []);
          });
  });
}
