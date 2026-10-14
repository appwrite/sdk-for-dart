import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Webflow', () {
    test('model', () {
      final model = OAuth2Webflow(
        $id: "github",
        enabled: true,
        clientId:
            "8bb20000000000000000000000000000000000000000000000000000000040dd",
        clientSecret:
            "59bf00000000000000000000000000000000000000000000000000000000fe59",
      );

      final map = model.toMap();
      final result = OAuth2Webflow.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(
        result.clientId,
        "8bb20000000000000000000000000000000000000000000000000000000040dd",
      );
      expect(
        result.clientSecret,
        "59bf00000000000000000000000000000000000000000000000000000000fe59",
      );
    });
  });
}
