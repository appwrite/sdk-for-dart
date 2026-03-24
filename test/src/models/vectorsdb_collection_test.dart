import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('VectorsdbCollection', () {
    test('model', () {
      final model = VectorsdbCollection(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        $permissions: [],
        databaseId: '5e5ea5c16897e',
        name: 'My Collection',
        enabled: true,
        documentSecurity: true,
        attributes: [],
        indexes: [],
        bytesMax: 65535,
        bytesUsed: 1500,
        dimension: 1536,
      );

      final map = model.toMap();
      final result = VectorsdbCollection.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$permissions, []);
      expect(result.databaseId, '5e5ea5c16897e');
      expect(result.name, 'My Collection');
      expect(result.enabled, true);
      expect(result.documentSecurity, true);
      expect(result.attributes, []);
      expect(result.indexes, []);
      expect(result.bytesMax, 65535);
      expect(result.bytesUsed, 1500);
      expect(result.dimension, 1536);
    });
  });
}
