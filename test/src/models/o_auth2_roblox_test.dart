import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Roblox', () {
    test('model', () {
      final model = OAuth2Roblox(
        $id: "github",
        enabled: true,
        clientId: "1234567890123456789",
        clientSecret:
            "RBX-0000000000000000000000000000000000000000000000000000000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Roblox.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "1234567890123456789");
      expect(
        result.clientSecret,
        "RBX-0000000000000000000000000000000000000000000000000000000000000000000000",
      );
    });
  });
}
