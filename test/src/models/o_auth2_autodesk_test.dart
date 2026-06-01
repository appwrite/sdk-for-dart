import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Autodesk', () {
    test('model', () {
      final model = OAuth2Autodesk(
        $id: 'github',
        enabled: true,
        clientId: '5zw90v00000000000000000000kVYXN7',
        clientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Autodesk.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, '5zw90v00000000000000000000kVYXN7');
      expect(result.clientSecret, 'your-oauth2-client-secret');
    });
  });
}
