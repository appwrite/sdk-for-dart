import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Zoom', () {
    test('model', () {
      final model = OAuth2Zoom(
        $id: 'github',
        enabled: true,
        clientId: 'QMAC00000000000000w0AQ',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Zoom.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'QMAC00000000000000w0AQ');
      expect(result.clientSecret, 'your-oauth2-client-secret');
    });
  });
}
