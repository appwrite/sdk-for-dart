import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Slack', () {
    test('model', () {
      final model = OAuth2Slack(
        $id: 'github',
        enabled: true,
        clientId: '23000000089.15000000000023',
        clientSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Slack.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '23000000089.15000000000023');
                  expect(result.clientSecret, '<CLIENT_SECRET>');
          });
  });
}
