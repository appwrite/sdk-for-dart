import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyUserLimit', () {
    test('model', () {
      final model = PolicyUserLimit(
        $id: 'password-dictionary',
        total: 100,
      );

      final map = model.toMap();
      final result = PolicyUserLimit.fromMap(map);

      expect(result.$id, 'password-dictionary');
      expect(result.total, 100);
    });
  });
}
