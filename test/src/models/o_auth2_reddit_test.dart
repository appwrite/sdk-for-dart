import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Reddit', () {
    test('model', () {
      final model = OAuth2Reddit(
        $id: "github",
        enabled: true,
        clientId: "aBcD0000000000000000aB",
        clientSecret: "xYz00000000000000000000000000a",
      );

      final map = model.toMap();
      final result = OAuth2Reddit.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "aBcD0000000000000000aB");
      expect(result.clientSecret, "xYz00000000000000000000000000a");
    });
  });
}
