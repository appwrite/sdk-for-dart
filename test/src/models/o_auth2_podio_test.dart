import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Podio', () {
    test('model', () {
      final model = OAuth2Podio(
        $id: 'github',
        enabled: true,
        clientId: 'appwrite-oauth-test-app',
        clientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Podio.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'appwrite-oauth-test-app');
      expect(result.clientSecret, '<CLIENT_SECRET>');
    });
  });
}
