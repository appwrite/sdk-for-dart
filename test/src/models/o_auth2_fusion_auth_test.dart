import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2FusionAuth', () {
    test('model', () {
      final model = OAuth2FusionAuth(
        $id: 'github',
        enabled: true,
        clientId: 'b2222c00-0000-0000-0000-000000862097',
        clientSecret: 'your-oauth2-client-secret',
        endpoint: 'example.fusionauth.io',
      );

      final map = model.toMap();
      final result = OAuth2FusionAuth.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'b2222c00-0000-0000-0000-000000862097');
      expect(result.clientSecret, 'your-oauth2-client-secret');
      expect(result.endpoint, 'example.fusionauth.io');
    });
  });
}
