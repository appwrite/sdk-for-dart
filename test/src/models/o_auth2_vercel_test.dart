import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Vercel', () {
    test('model', () {
      final model = OAuth2Vercel(
        $id: "github",
        enabled: true,
        clientId: "cl_0000000000000000000000000000000",
        clientSecret: "vc_0000000000000000000000000000000000000000000000",
      );

      final map = model.toMap();
      final result = OAuth2Vercel.fromMap(map);

      expect(result.$id, "github");
      expect(result.enabled, true);
      expect(result.clientId, "cl_0000000000000000000000000000000");
      expect(
        result.clientSecret,
        "vc_0000000000000000000000000000000000000000000000",
      );
    });
  });
}
