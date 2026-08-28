import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseBackup', () {
    test('model', () {
      final model = DedicatedDatabaseBackup(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        databaseId: "5e5ea5c16897e",
        projectId: "5e5ea5c16897e",
        policyId: "5e5ea5c16897e",
        trigger: "schedule",
        type: "full",
        requestedType: "incremental",
        fallbackReason:
            "PostgreSQL incremental backups are not offered because they cannot be restored: archived WAL is physical and cannot replay onto a logically-restored base. A full backup was taken instead; use a point-in-time restore (targetTime) to recover to a moment between fulls.",
        status: "completed",
        sizeBytes: 1073741824,
        error: "",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseBackup.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.databaseId, "5e5ea5c16897e");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.policyId, "5e5ea5c16897e");
      expect(result.trigger, "schedule");
      expect(result.type, "full");
      expect(result.requestedType, "incremental");
      expect(
        result.fallbackReason,
        "PostgreSQL incremental backups are not offered because they cannot be restored: archived WAL is physical and cannot replay onto a logically-restored base. A full backup was taken instead; use a point-in-time restore (targetTime) to recover to a moment between fulls.",
      );
      expect(result.status, "completed");
      expect(result.sizeBytes, 1073741824);
      expect(result.error, "");
    });
  });
}
