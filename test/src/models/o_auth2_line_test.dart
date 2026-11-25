import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Line', () {
    test('model', () {
      final model = OAuth2Line(
        $id: "github",
        enabled: true,
        clientId: "1650000000",
        clientSecret: "a1b2c3d4e5f600000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Line.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "1650000000");
      expect(result.clientSecret, "a1b2c3d4e5f600000000000000000000");
    });
  });
}
