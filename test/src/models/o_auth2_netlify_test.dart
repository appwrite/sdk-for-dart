import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Netlify', () {
    test('model', () {
      final model = OAuth2Netlify(
        $id: "github",
        enabled: true,
        clientId: "00000000000000000000000000000000",
        clientSecret: "00000000000000000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Netlify.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "00000000000000000000000000000000");
      expect(result.clientSecret, "00000000000000000000000000000000");
    });
  });
}
