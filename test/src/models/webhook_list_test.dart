import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('WebhookList', () {
    test('model', () {
      final model = WebhookList(
        total: 5,
        webhooks: [],
      );

      final map = model.toMap();
      final result = WebhookList.fromMap(map);

            expect(result.total, 5);
                  expect(result.webhooks, []);
          });
  });
}
