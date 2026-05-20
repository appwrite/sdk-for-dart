import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Podio', () {
    test('model', () {
      final model = OAuth2Podio(
        $id: 'github',
        enabled: true,
        clientId: 'appwrite-oauth-test-app',
        clientSecret:
            'Rn247T0000000000000000000000000000000000000000000000000000W2zWTN',
      );

      final map = model.toMap();
      final result = OAuth2Podio.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'appwrite-oauth-test-app');
      expect(result.clientSecret,
          'Rn247T0000000000000000000000000000000000000000000000000000W2zWTN');
    });
  });
}
