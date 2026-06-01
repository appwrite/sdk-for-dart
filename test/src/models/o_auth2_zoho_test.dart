import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Zoho', () {
    test('model', () {
      final model = OAuth2Zoho(
        $id: 'github',
        enabled: true,
        clientId: '1000.83C178000000000000000000RPNX0B',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Zoho.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, '1000.83C178000000000000000000RPNX0B');
      expect(result.clientSecret, 'your-oauth2-client-secret');
    });
  });
}
