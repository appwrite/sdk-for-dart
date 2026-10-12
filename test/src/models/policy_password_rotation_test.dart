import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordRotation', () {
    test('model', () {
      final model = PolicyPasswordRotation(
        $id: "password-dictionary",
        enabled: true,
        maxAge: 31536000,
      );

      final map = model.toMap();
      final result = PolicyPasswordRotation.fromMap(map);

      expect(result.$id, "password-dictionary");
      expect(result.enabled, true);
      expect(result.maxAge, 31536000);
    });
  });
}
