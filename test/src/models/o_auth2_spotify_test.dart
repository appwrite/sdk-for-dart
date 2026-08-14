import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Spotify', () {
    test('model', () {
      final model = OAuth2Spotify(
        $id: 'github',
        enabled: true,
        clientId: '6ec271000000000000000000009beace',
        clientSecret: 'db068a000000000000000000008b5b9f',
      );

      final map = model.toMap();
      final result = OAuth2Spotify.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '6ec271000000000000000000009beace');
                  expect(result.clientSecret, 'db068a000000000000000000008b5b9f');
          });
  });
}
