import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Presence', () {
    test('model', () {
      final model = Presence(
        $id: '5e5ea5c16897e',
        $sequence: '1',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        $permissions: [],
        userInternalId: '1',
        userId: '674af8f3e12a5f9ac0be',
        source: 'HTTP',
        data: {},
      );

      final map = model.toMap();
      final result = Presence.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$sequence, '1');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$permissions, []);
                  expect(result.userInternalId, '1');
                  expect(result.userId, '674af8f3e12a5f9ac0be');
                  expect(result.source, 'HTTP');
          });
  });
}
