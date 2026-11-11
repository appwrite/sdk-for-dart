import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyAccountDevices', () {
    test('model', () {
      final model = PolicyAccountDevices(
        $id: "password-dictionary",
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyAccountDevices.fromMap(map);

      expect(result.$id, "password-dictionary");
      expect(result.enabled, true);
    });
  });
}
