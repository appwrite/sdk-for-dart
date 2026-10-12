import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Kakao', () {
    test('model', () {
      final model = OAuth2Kakao(
        $id: "github",
        enabled: true,
        clientId: "839ff5000000000000000000013206de",
        clientSecret: "jLNVOK00000000000000000000yJebea",
        prompt: [],
      );

      final map = model.toMap();
      final result = OAuth2Kakao.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "839ff5000000000000000000013206de");
      expect(result.clientSecret, "jLNVOK00000000000000000000yJebea");
      expect(result.prompt, []);
    });
  });
}
