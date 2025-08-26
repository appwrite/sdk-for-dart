import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('TableList', () {
    test('model', () {
      final model = TableList(
        total: 5,
        tables: [],
      );

      final map = model.toMap();
      final result = TableList.fromMap(map);

            expect(result.total, 5);
                  expect(result.tables, []);
          });
  });
}
