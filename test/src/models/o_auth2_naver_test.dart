import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Naver', () {
    test('model', () {
      final model = OAuth2Naver(
        $id: "github",
        enabled: true,
        clientId: "jK8pQ0000000000000Zv",
        clientSecret: "9f42A0000000000c1dEb",
      );

      final map = model.toMap();
      final result = OAuth2Naver.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "jK8pQ0000000000000Zv");
      expect(result.clientSecret, "9f42A0000000000c1dEb");
    });
  });
}
