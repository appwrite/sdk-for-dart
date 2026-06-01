import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2WordPress', () {
    test('model', () {
      final model = OAuth2WordPress(
        $id: 'github',
        enabled: true,
        clientId: '130005',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2WordPress.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '130005');
                  expect(result.clientSecret, 'your-oauth2-client-secret');
          });
  });
}
