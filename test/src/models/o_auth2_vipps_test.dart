import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Vipps', () {
    test('model', () {
      final model = OAuth2Vipps(
        $id: "github",
        enabled: true,
        clientId: "9a3a4b3e-0000-0000-0000-0f1a6d1c3b2e",
        clientSecret: "Ay1jb000000000000000000000000000000Vx3k",
      );

      final map = model.toMap();
      final result = OAuth2Vipps.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "9a3a4b3e-0000-0000-0000-0f1a6d1c3b2e");
      expect(result.clientSecret, "Ay1jb000000000000000000000000000000Vx3k");
    });
  });
}
