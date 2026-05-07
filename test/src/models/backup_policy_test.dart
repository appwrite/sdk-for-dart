import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupPolicy', () {
    test('model', () {
      final model = BackupPolicy(
        $id: '5e5ea5c16897e',
        name: 'Hourly backups',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        services: [],
        resources: [],
        retention: 7,
        schedule: '0 * * * *',
        enabled: true,
      );

      final map = model.toMap();
      final result = BackupPolicy.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.name, 'Hourly backups');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.services, []);
      expect(result.resources, []);
      expect(result.retention, 7);
      expect(result.schedule, '0 * * * *');
      expect(result.enabled, true);
    });
  });
}
