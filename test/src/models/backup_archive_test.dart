import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupArchive', () {
    test('model', () {
      final model = BackupArchive(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        policyId: 'did8jx6ws45jana098ab7',
        size: 100000,
        status: 'completed',
        startedAt: '2020-10-15T06:38:00.000+00:00',
        migrationId: 'did8jx6ws45jana098ab7',
        services: [],
        resources: [],
      );

      final map = model.toMap();
      final result = BackupArchive.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.policyId, 'did8jx6ws45jana098ab7');
                  expect(result.size, 100000);
                  expect(result.status, 'completed');
                  expect(result.startedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.migrationId, 'did8jx6ws45jana098ab7');
                  expect(result.services, []);
                  expect(result.resources, []);
          });
  });
}
