import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseList', () {
    test('model', () {
      final model = DedicatedDatabaseList(
        total: 5,
        databases: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseList.fromMap(map);

      expect(result.total, 5);
      expect(result.databases, []);
    });
  });
}
