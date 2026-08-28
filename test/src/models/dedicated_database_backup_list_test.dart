import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseBackupList', () {
    test('model', () {
      final model = DedicatedDatabaseBackupList(
        total: 5,
        backups: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseBackupList.fromMap(map);

      expect(result.total, 5);
      expect(result.backups, []);
    });
  });
}
