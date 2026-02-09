import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('Database', () {
    test('model', () {
      final model = Database(
        $id: '5e5ea5c16897e',
        name: 'My Database',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        enabled: true,
        type: DatabaseType.legacy,
        policies: [],
        archives: [],
      );

      final map = model.toMap();
      final result = Database.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.name, 'My Database');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.enabled, true);
                  expect(result.type, DatabaseType.legacy);
                  expect(result.policies, []);
                  expect(result.archives, []);
          });
  });
}
