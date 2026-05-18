import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Github', () {
    test('model', () {
      final model = OAuth2Github(
        $id: 'github',
        enabled: true,
        clientId: 'e4d87900000000540733',
        clientSecret: '5e07c00000000000000000000000000000198bcc',
      );

      final map = model.toMap();
      final result = OAuth2Github.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'e4d87900000000540733');
      expect(result.clientSecret, '5e07c00000000000000000000000000000198bcc');
    });
  });
}
