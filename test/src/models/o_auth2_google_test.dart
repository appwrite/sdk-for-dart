import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Google', () {
    test('model', () {
      final model = OAuth2Google(
        $id: 'github',
        enabled: true,
        clientId:
            '120000000095-92ifjb00000000000000000000g7ijfb.apps.googleusercontent.com',
        clientSecret: 'your-oauth2-client-secret',
        prompt: [],
      );

      final map = model.toMap();
      final result = OAuth2Google.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId,
          '120000000095-92ifjb00000000000000000000g7ijfb.apps.googleusercontent.com');
      expect(result.clientSecret, 'your-oauth2-client-secret');
      expect(result.prompt, []);
    });
  });
}
