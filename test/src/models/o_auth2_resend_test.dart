import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Resend', () {
    test('model', () {
      final model = OAuth2Resend(
        $id: "github",
        enabled: true,
        clientId: "f47ac10b-58cc-4372-a567-0e02b2c3d479",
        clientSecret:
            "9c1e4b00000000000000000000000000000000000000000000000000a72d5f4",
      );

      final map = model.toMap();
      final result = OAuth2Resend.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "f47ac10b-58cc-4372-a567-0e02b2c3d479");
      expect(
        result.clientSecret,
        "9c1e4b00000000000000000000000000000000000000000000000000a72d5f4",
      );
    });
  });
}
