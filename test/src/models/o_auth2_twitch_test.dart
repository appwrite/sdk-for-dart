import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Twitch', () {
    test('model', () {
      final model = OAuth2Twitch(
        $id: 'github',
        enabled: true,
        clientId: 'vvi0in000000000000000000ikmt9p',
        clientSecret: 'pmapue000000000000000000zylw3v',
      );

      final map = model.toMap();
      final result = OAuth2Twitch.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId, 'vvi0in000000000000000000ikmt9p');
      expect(result.clientSecret, 'pmapue000000000000000000zylw3v');
    });
  });
}
