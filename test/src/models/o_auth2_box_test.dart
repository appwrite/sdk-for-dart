import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Box', () {
    test('model', () {
      final model = OAuth2Box(
        $id: 'github',
        enabled: true,
        clientId: 'deglcs00000000000000000000x2og6y',
        clientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Box.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'deglcs00000000000000000000x2og6y');
      expect(result.clientSecret, '<CLIENT_SECRET>');
    });
  });
}
