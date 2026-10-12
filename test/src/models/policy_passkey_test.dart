import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasskey', () {
    test('model', () {
      final model = PolicyPasskey(
        $id: "password-dictionary",
        rpId: "example.com",
        origins: [],
      );

      final map = model.toMap();
      final result = PolicyPasskey.fromMap(map);

      expect(result.$id, "password-dictionary");
      expect(result.rpId, "example.com");
      expect(result.origins, []);
    });
  });
}
