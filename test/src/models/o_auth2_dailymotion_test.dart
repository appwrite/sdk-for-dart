import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Dailymotion', () {
    test('model', () {
      final model = OAuth2Dailymotion(
        $id: 'github',
        enabled: true,
        apiKey: '07a9000000000000067f',
        apiSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Dailymotion.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.apiKey, '07a9000000000000067f');
                  expect(result.apiSecret, '<CLIENT_SECRET>');
          });
  });
}
