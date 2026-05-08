import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Facebook', () {
    test('model', () {
      final model = OAuth2Facebook(
        $id: 'github',
        enabled: true,
        appId: '260600000007694',
        appSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Facebook.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.appId, '260600000007694');
      expect(result.appSecret, '<CLIENT_SECRET>');
    });
  });
}
