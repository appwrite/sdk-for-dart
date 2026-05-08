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
        secretKey:
            'W7Bykj00000000000000000000000000000000000000000000000000003o43w9',
      );

      final map = model.toMap();
      final result = OAuth2Disqus.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.publicKey,
          'cgegH70000000000000000000000000000000000000000000000000000Hr1nYX');
      expect(result.secretKey,
          'W7Bykj00000000000000000000000000000000000000000000000000003o43w9');
    });
  });
}
