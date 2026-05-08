import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Bitly', () {
    test('model', () {
      final model = OAuth2Bitly(
        $id: 'github',
        enabled: true,
        clientId: 'd95151000000000000000000000000000067af9b',
        clientSecret: 'a13e250000000000000000000000000000d73095',
      );

      final map = model.toMap();
      final result = OAuth2Bitly.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'd95151000000000000000000000000000067af9b');
      expect(result.clientSecret, 'a13e250000000000000000000000000000d73095');
    });
  });
}
