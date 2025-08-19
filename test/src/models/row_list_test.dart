import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('RowList', () {
    test('model', () {
      final model = RowList(
        total: 5,
        rows: [],
      );

      final map = model.toMap();
      final result = RowList.fromMap(map);

      expect(result.total, 5);
      expect(result.rows, []);
    });
  });
}
