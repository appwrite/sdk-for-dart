import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2HuggingFace', () {
    test('model', () {
      final model = OAuth2HuggingFace(
        $id: "github",
        enabled: true,
        clientId: "2ab9cff9-d711-40ad-a91e-b08a49c42d24",
        clientSecret: "oauth_app_secret_wcLhRtl000000000000000000000xbNdLt",
      );

      final map = model.toMap();
      final result = OAuth2HuggingFace.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "2ab9cff9-d711-40ad-a91e-b08a49c42d24");
      expect(
        result.clientSecret,
        "oauth_app_secret_wcLhRtl000000000000000000000xbNdLt",
      );
    });
  });
}
