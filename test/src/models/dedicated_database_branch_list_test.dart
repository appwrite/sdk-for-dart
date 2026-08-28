import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseBranchList', () {
    test('model', () {
      final model = DedicatedDatabaseBranchList(
        total: 2,
        branches: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseBranchList.fromMap(map);

      expect(result.total, 2);
      expect(result.branches, []);
    });
  });
}
