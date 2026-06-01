import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Kick', () {
    test('model', () {
      final model = OAuth2Kick(
        $id: 'github',
        enabled: true,
        clientId: '01KQ7C00000000000001MFHS32',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Kick.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '01KQ7C00000000000001MFHS32');
                  expect(result.clientSecret, 'your-oauth2-client-secret');
          });
  });
}
