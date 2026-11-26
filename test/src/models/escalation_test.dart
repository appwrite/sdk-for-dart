import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Escalation', () {
    test('model', () {
      final model = Escalation(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "Platform",
        steps: [],
        repeat: 2,
      );

      final map = model.toMap();
      final result = Escalation.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "Platform");
      expect(result.steps, []);
      expect(result.repeat, 2);
    });
  });
}
