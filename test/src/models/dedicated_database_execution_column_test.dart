import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseExecutionColumn', () {
    test('model', () {
      final model = DedicatedDatabaseExecutionColumn(
        name: "id",
        type: "int4",
      );

      final map = model.toMap();
      final result = DedicatedDatabaseExecutionColumn.fromMap(map);

      expect(result.name, "id");
      expect(result.type, "int4");
    });
  });
}
