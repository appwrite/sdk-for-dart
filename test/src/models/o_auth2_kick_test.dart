import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Kick', () {
    test('model', () {
      final model = OAuth2Kick(
        $id: 'github',
        enabled: true,
        clientId: '01KQ7C00000000000001MFHS32',
        clientSecret: '34ac5600000000000000000000000000000000000000000000000000e830c8b',
      );

      final map = model.toMap();
      final result = OAuth2Kick.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '01KQ7C00000000000001MFHS32');
                  expect(result.clientSecret, '34ac5600000000000000000000000000000000000000000000000000e830c8b');
          });
  });
}
