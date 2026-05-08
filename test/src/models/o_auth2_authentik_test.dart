import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Authentik', () {
    test('model', () {
      final model = OAuth2Authentik(
        $id: 'github',
        enabled: true,
        clientId: 'dTKOPa0000000000000000000000000000e7G8hv',
        clientSecret: '<CLIENT_SECRET>',
        endpoint: 'example.authentik.com',
      );

      final map = model.toMap();
      final result = OAuth2Authentik.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, 'dTKOPa0000000000000000000000000000e7G8hv');
                  expect(result.clientSecret, '<CLIENT_SECRET>');
                  expect(result.endpoint, 'example.authentik.com');
          });
  });
}
