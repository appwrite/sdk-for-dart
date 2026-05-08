import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Yahoo', () {
    test('model', () {
      final model = OAuth2Yahoo(
        $id: 'github',
        enabled: true,
        clientId:
            'dj0yJm000000000000000000000000000000000000000000000000000000000000000000000000000000000000Z4PWRm',
        clientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Yahoo.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId,
          'dj0yJm000000000000000000000000000000000000000000000000000000000000000000000000000000000000Z4PWRm');
      expect(result.clientSecret, '<CLIENT_SECRET>');
    });
  });
}
