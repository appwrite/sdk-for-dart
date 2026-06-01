import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Stripe', () {
    test('model', () {
      final model = OAuth2Stripe(
        $id: 'github',
        enabled: true,
        clientId: 'ca_UKibXX0000000000000000000006byvR',
        apiSecretKey: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Stripe.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'ca_UKibXX0000000000000000000006byvR');
      expect(result.apiSecretKey, 'your-oauth2-client-secret');
    });
  });
}
