import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Yandex', () {
    test('model', () {
      final model = OAuth2Yandex(
        $id: 'github',
        enabled: true,
        clientId: '6a8a6a0000000000000000000091483c',
        clientSecret: 'bbf98500000000000000000000c75a63',
      );

      final map = model.toMap();
      final result = OAuth2Yandex.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, '6a8a6a0000000000000000000091483c');
      expect(result.clientSecret, 'bbf98500000000000000000000c75a63');
    });
  });
}
