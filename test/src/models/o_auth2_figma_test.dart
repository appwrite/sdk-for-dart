import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Figma', () {
    test('model', () {
      final model = OAuth2Figma(
        $id: 'github',
        enabled: true,
        clientId: 'byay5H0000000000VtiI40',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Figma.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, 'byay5H0000000000VtiI40');
                  expect(result.clientSecret, 'your-oauth2-client-secret');
          });
  });
}
