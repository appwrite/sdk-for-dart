import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Oidc', () {
    test('model', () {
      final model = OAuth2Oidc(
        $id: 'github',
        enabled: true,
        clientId: 'qibI2x0000000000000000000000000006L2YFoG',
        clientSecret: 'your-oauth2-client-secret',
        wellKnownURL: 'https://myoauth.com/.well-known/openid-configuration',
        authorizationURL: 'https://myoauth.com/oauth2/authorize',
        tokenURL: 'https://myoauth.com/oauth2/token',
        userInfoURL: 'https://myoauth.com/oauth2/userinfo',
      );

      final map = model.toMap();
      final result = OAuth2Oidc.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'qibI2x0000000000000000000000000006L2YFoG');
      expect(result.clientSecret, 'your-oauth2-client-secret');
      expect(result.wellKnownURL,
          'https://myoauth.com/.well-known/openid-configuration');
      expect(result.authorizationURL, 'https://myoauth.com/oauth2/authorize');
      expect(result.tokenURL, 'https://myoauth.com/oauth2/token');
      expect(result.userInfoURL, 'https://myoauth.com/oauth2/userinfo');
    });
  });
}
