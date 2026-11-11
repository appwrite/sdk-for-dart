import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Environment', () {
    test('model', () {
      final model = Environment(
        $id: "staging",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        projectId: "5e5ea5c16897e",
        name: "Staging",
      );

      final map = model.toMap();
      final result = Environment.fromMap(map);

      expect(result.$id, "staging");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.projectId, "5e5ea5c16897e");
      expect(result.name, "Staging");
    });
  });
}
