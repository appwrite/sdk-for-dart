import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Message', () {
    test('model', () {
      final model = Message(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        providerType: 'email',
        topics: [],
        users: [],
        targets: [],
        deliveredTotal: 1,
        data: {},
        status: 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.',
      );

      final map = model.toMap();
      final result = Message.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.providerType, 'email');
                  expect(result.topics, []);
                  expect(result.users, []);
                  expect(result.targets, []);
                  expect(result.deliveredTotal, 1);
                  expect(result.data, {});
                  expect(result.status, 'Message status can be one of the following: draft, processing, scheduled, sent, or failed.');
          });
  });
}
