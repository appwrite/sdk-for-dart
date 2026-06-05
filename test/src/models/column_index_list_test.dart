import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ColumnIndexList', () {
    test('model', () {
      final model = ColumnIndexList(
        total: 5,
        indexes: [],
      );

      final map = model.toMap();
      final result = ColumnIndexList.fromMap(map);

      expect(result.total, 5);
      expect(result.indexes, []);
    });
  });
}
