import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Linear', () {
    test('model', () {
      final model = OAuth2Linear(
        $id: "github",
        enabled: true,
        clientId: "5e1c0000000000000000000000000000",
        clientSecret: "9f8e7d6c5b4a00000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Linear.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "5e1c0000000000000000000000000000");
      expect(result.clientSecret, "9f8e7d6c5b4a00000000000000000000");
    });
  });
}
