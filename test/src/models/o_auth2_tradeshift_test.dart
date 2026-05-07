import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Tradeshift', () {
    test('model', () {
      final model = OAuth2Tradeshift(
        $id: 'github',
        enabled: true,
        oauth2ClientId: 'appwrite-test-org.appwrite-test-app',
        oauth2ClientSecret: '7cb52700-0000-0000-0000-000000ca5b83',
      );

      final map = model.toMap();
      final result = OAuth2Tradeshift.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.oauth2ClientId, 'appwrite-test-org.appwrite-test-app');
                  expect(result.oauth2ClientSecret, '7cb52700-0000-0000-0000-000000ca5b83');
          });
  });
}
