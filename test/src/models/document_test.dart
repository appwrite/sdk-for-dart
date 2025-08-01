import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Document', () {

    test('model', () {
      final model = Document(
        $id: '5e5ea5c16897e',
        $sequence: 1,
        $collectionId: '5e5ea5c15117e',
        $databaseId: '5e5ea5c15117e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        $permissions: [],
        data: {},
      );

      final map = model.toMap();
      final result = Document.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$sequence, 1);
      expect(result.$collectionId, '5e5ea5c15117e');
      expect(result.$databaseId, '5e5ea5c15117e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$permissions, []);
    });
  });
}
