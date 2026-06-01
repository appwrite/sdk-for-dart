import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Okta', () {
    test('model', () {
      final model = OAuth2Okta(
        $id: 'github',
        enabled: true,
        clientId: '0oa00000000000000698',
        clientSecret: 'your-oauth2-client-secret',
        domain: 'trial-6400025.okta.com',
        authorizationServerId: 'aus000000000000000h7z',
      );

      final map = model.toMap();
      final result = OAuth2Okta.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '0oa00000000000000698');
                  expect(result.clientSecret, 'your-oauth2-client-secret');
                  expect(result.domain, 'trial-6400025.okta.com');
                  expect(result.authorizationServerId, 'aus000000000000000h7z');
          });
  });
}
