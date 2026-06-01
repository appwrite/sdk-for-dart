import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Keycloak', () {
    test('model', () {
      final model = OAuth2Keycloak(
        $id: 'github',
        enabled: true,
        clientId: 'appwrite-o0000000st-app',
        clientSecret: 'your-oauth2-client-secret',
        endpoint: 'keycloak.example.com',
        realmName: 'appwrite-realm',
      );

      final map = model.toMap();
      final result = OAuth2Keycloak.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'appwrite-o0000000st-app');
      expect(result.clientSecret, 'your-oauth2-client-secret');
      expect(result.endpoint, 'keycloak.example.com');
      expect(result.realmName, 'appwrite-realm');
    });
  });
}
