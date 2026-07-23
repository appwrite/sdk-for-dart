import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupRestoration', () {
    test('model', () {
      final model = BackupRestoration(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        archiveId: 'did8jx6ws45jana098ab7',
        policyId: 'did8jx6ws45jana098ab7',
        status: 'completed',
        startedAt: '2020-10-15T06:38:00.000+00:00',
        migrationId: 'did8jx6ws45jana098ab7',
        services: [],
        resources: [],
        options: '{databases.database[{oldId, newId, newName}]}',
      );

      final map = model.toMap();
      final result = BackupRestoration.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.archiveId, 'did8jx6ws45jana098ab7');
      expect(result.policyId, 'did8jx6ws45jana098ab7');
      expect(result.status, 'completed');
      expect(result.startedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.migrationId, 'did8jx6ws45jana098ab7');
      expect(result.services, []);
      expect(result.resources, []);
      expect(result.options, '{databases.database[{oldId, newId, newName}]}');
    });
  });
}
