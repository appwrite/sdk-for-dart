import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2TikTok', () {
    test('model', () {
      final model = OAuth2TikTok(
        $id: "github",
        enabled: true,
        clientId: "awz000000000tyw0",
        clientSecret: "6wXewM00000000000000000000yXnite",
      );

      final map = model.toMap();
      final result = OAuth2TikTok.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "awz000000000tyw0");
      expect(result.clientSecret, "6wXewM00000000000000000000yXnite");
    });
  });
}
