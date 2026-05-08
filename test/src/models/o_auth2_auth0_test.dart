import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Auth0', () {
    test('model', () {
      final model = OAuth2Auth0(
        $id: 'github',
        enabled: true,
        clientId: 'OaOkIA000000000000000000005KLSYq',
        clientSecret: '<CLIENT_SECRET>',
        endpoint: 'example.us.auth0.com',
      );

      final map = model.toMap();
      final result = OAuth2Auth0.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'OaOkIA000000000000000000005KLSYq');
      expect(result.clientSecret, '<CLIENT_SECRET>');
      expect(result.endpoint, 'example.us.auth0.com');
    });
  });
}
