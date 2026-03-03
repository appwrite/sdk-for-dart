import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('IndexList', () {
    test('model', () {
      final model = IndexList(
        total: 5,
        indexes: [],
      );

      final map = model.toMap();
      final result = IndexList.fromMap(map);

            expect(result.total, 5);
                  expect(result.indexes, []);
          });
  });
}
