import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Disqus', () {
    test('model', () {
      final model = OAuth2Disqus(
        $id: 'github',
        enabled: true,
        publicKey:
            'cgegH70000000000000000000000000000000000000000000000000000Hr1nYX',
        secretKey: 'your-oauth2-client-secret',
      );

      final map = model.toMap();
      final result = OAuth2Disqus.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.publicKey,
          'cgegH70000000000000000000000000000000000000000000000000000Hr1nYX');
      expect(result.secretKey, 'your-oauth2-client-secret');
    });
  });
}
