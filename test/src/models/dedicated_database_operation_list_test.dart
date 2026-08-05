import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseOperationList', () {
    test('model', () {
      final model = DedicatedDatabaseOperationList(
        total: 5,
        operations: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseOperationList.fromMap(map);

      expect(result.total, 5);
      expect(result.operations, []);
    });
  });
}
