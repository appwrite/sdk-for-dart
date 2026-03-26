import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Webhook', () {
    test('model', () {
      final model = Webhook(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'My Webhook',
        url: 'https://example.com/webhook',
        events: [],
        security: true,
        httpUser: 'username',
        httpPass: 'password',
        signatureKey: 'ad3d581ca230e2b7059c545e5a',
        enabled: true,
        logs: 'Failed to connect to remote server.',
        attempts: 10,
      );

      final map = model.toMap();
      final result = Webhook.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.name, 'My Webhook');
      expect(result.url, 'https://example.com/webhook');
      expect(result.events, []);
      expect(result.security, true);
      expect(result.httpUser, 'username');
      expect(result.httpPass, 'password');
      expect(result.signatureKey, 'ad3d581ca230e2b7059c545e5a');
      expect(result.enabled, true);
      expect(result.logs, 'Failed to connect to remote server.');
      expect(result.attempts, 10);
    });
  });
}
