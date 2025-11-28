import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Provider', () {
    test('model', () {
      final model = Provider(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        name: 'Mailgun',
        provider: 'mailgun',
        enabled: true,
        type: 'sms',
        credentials: {},
      );

      final map = model.toMap();
      final result = Provider.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.name, 'Mailgun');
                  expect(result.provider, 'mailgun');
                  expect(result.enabled, true);
                  expect(result.type, 'sms');
                  expect(result.credentials, {});
          });
  });
}
