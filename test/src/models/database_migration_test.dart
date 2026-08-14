import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseMigration', () {
    test('model', () {
      final model = DatabaseMigration(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        projectId: '5e5ea5c16897e',
        databaseId: '5e5ea5c16897e',
        specification: 's-2vcpu-4gb',
        phase: 'pending',
        attempt: 0,
        lastError: '',
        lagDocuments: 0,
        verifiedAt: '2020-10-15T06:38:00.000+00:00',
        cutoverAt: '2020-10-15T06:38:00.000+00:00',
        soakUntil: '2020-10-15T06:38:00.000+00:00',
        autoCutover: true,
        cutoverRequested: true,
        paused: true,
      );

      final map = model.toMap();
      final result = DatabaseMigration.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.projectId, '5e5ea5c16897e');
                  expect(result.databaseId, '5e5ea5c16897e');
                  expect(result.specification, 's-2vcpu-4gb');
                  expect(result.phase, 'pending');
                  expect(result.attempt, 0);
                  expect(result.lastError, '');
                  expect(result.lagDocuments, 0);
                  expect(result.verifiedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.cutoverAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.soakUntil, '2020-10-15T06:38:00.000+00:00');
                  expect(result.autoCutover, true);
                  expect(result.cutoverRequested, true);
                  expect(result.paused, true);
          });
  });
}
