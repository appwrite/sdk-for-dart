import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('VectorsdbCollectionList', () {
    test('model', () {
      final model = VectorsdbCollectionList(
        total: 5,
        collections: [],
      );

      final map = model.toMap();
      final result = VectorsdbCollectionList.fromMap(map);

      expect(result.total, 5);
      expect(result.collections, []);
    });
  });
}
