import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('CollectionList', () {
    test('model', () {
      final model = CollectionList(
        total: 5,
        collections: [],
      );

      final map = model.toMap();
      final result = CollectionList.fromMap(map);

      expect(result.total, 5);
      expect(result.collections, []);
    });
  });
}
