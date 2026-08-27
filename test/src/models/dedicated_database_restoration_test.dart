import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseRestoration', () {
    test('model', () {
      final model = DedicatedDatabaseRestoration(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        databaseId: "5e5ea5c16897e",
        sourceDatabaseId: "5e5ea5c16897e",
        projectId: "5e5ea5c16897e",
        backupId: "5e5ea5c16897e",
        type: "backup",
        status: "completed",
        targetTime: "2020-10-15T06:38:00.000+00:00",
        startedAt: "2020-10-15T06:38:00.000+00:00",
        completedAt: "2020-10-15T06:38:00.000+00:00",
        error: "",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseRestoration.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.databaseId, "5e5ea5c16897e");
      expect(result.sourceDatabaseId, "5e5ea5c16897e");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.backupId, "5e5ea5c16897e");
      expect(result.type, "backup");
      expect(result.status, "completed");
      expect(result.targetTime, "2020-10-15T06:38:00.000+00:00");
      expect(result.startedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.completedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.error, "");
    });
  });
}
