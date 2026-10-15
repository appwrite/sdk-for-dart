import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseRestoration', () {
    test('model', () {
      final model = DedicatedDatabaseRestoration(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        databaseId: "5e5ea5c16897e",
        projectId: "5e5ea5c16897e",
        type: "backup",
        restoreMode: "clone",
        status: "completed",
        error: "",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseRestoration.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.databaseId, "5e5ea5c16897e");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.type, "backup");
      expect(result.restoreMode, "clone");
      expect(result.status, "completed");
      expect(result.error, "");
    });
  });
}
