import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseList', () {
    test('model', () {
      final model = DatabaseList(
        total: 5,
        databases: [],
      );

      final map = model.toMap();
      final result = DatabaseList.fromMap(map);

      expect(result.total, 5);
      expect(result.databases, []);
    });
  });
}
