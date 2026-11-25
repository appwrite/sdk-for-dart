import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Atlassian', () {
    test('model', () {
      final model = OAuth2Atlassian(
        $id: "github",
        enabled: true,
        clientId: "uQ7mZ3s0000000000000000000000000",
        clientSecret:
            "ATOA0000000000000000000000000000000000000000000000000000000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Atlassian.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "uQ7mZ3s0000000000000000000000000");
      expect(
        result.clientSecret,
        "ATOA0000000000000000000000000000000000000000000000000000000000000000000000",
      );
    });
  });
}
