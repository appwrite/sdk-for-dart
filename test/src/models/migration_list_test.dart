import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('MigrationList', () {
    test('model', () {
      final model = MigrationList(
        total: 5,
        migrations: [],
      );

      final map = model.toMap();
      final result = MigrationList.fromMap(map);

      expect(result.total, 5);
      expect(result.migrations, []);
    });
  });
}
