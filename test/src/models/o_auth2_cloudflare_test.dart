import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Cloudflare', () {
    test('model', () {
      final model = OAuth2Cloudflare(
        $id: "github",
        enabled: true,
        clientId: "4b866000000000000000000000c9e4e2",
        clientSecret: "cfoc_5Q6YRl0000000000000000000000000000000000003d214f",
      );

      final map = model.toMap();
      final result = OAuth2Cloudflare.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "4b866000000000000000000000c9e4e2");
      expect(
        result.clientSecret,
        "cfoc_5Q6YRl0000000000000000000000000000000000003d214f",
      );
    });
  });
}
