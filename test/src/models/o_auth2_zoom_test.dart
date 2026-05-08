import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Zoom', () {
    test('model', () {
      final model = OAuth2Zoom(
        $id: 'github',
        enabled: true,
        clientId: 'QMAC00000000000000w0AQ',
        clientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Zoom.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'QMAC00000000000000w0AQ');
      expect(result.clientSecret, '<CLIENT_SECRET>');
    });
  });
}
