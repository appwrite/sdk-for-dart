import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnList', () {
    test('model', () {
      final model = ColumnList(
        total: 5,
        columns: [],
      );

      final map = model.toMap();
      final result = ColumnList.fromMap(map);

      expect(result.total, 5);
      expect(result.columns, []);
    });
  });
}
