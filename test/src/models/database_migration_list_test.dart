import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseMigrationList', () {
    test('model', () {
      final model = DatabaseMigrationList(
        total: 5,
        migrations: [],
      );

      final map = model.toMap();
      final result = DatabaseMigrationList.fromMap(map);

            expect(result.total, 5);
                  expect(result.migrations, []);
          });
  });
}
