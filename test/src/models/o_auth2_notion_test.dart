import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Notion', () {
    test('model', () {
      final model = OAuth2Notion(
        $id: 'github',
        enabled: true,
        oauthClientId: '341d8700-0000-0000-0000-000000446ee3',
        oauthClientSecret: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Notion.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.oauthClientId, '341d8700-0000-0000-0000-000000446ee3');
      expect(result.oauthClientSecret, 'your-oauth2-client-secret');
    });
  });
}
