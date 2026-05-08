import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Linkedin', () {
    test('model', () {
      final model = OAuth2Linkedin(
        $id: 'github',
        enabled: true,
        clientId: '770000000000dv',
        primaryClientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Linkedin.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, '770000000000dv');
      expect(result.primaryClientSecret, '<CLIENT_SECRET>');
    });
  });
}
