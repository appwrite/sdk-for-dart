import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Table', () {

    test('model', () {
      final model = Table(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        $permissions: [],
        databaseId: '5e5ea5c16897e',
        name: 'My Table',
        enabled: true,
        rowSecurity: true,
        columns: [],
        indexes: [],
      );

      final map = model.toMap();
      final result = Table.fromMap(map);

      expect(result.$id, '5e5ea5c16897e');
      expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
      expect(result.$permissions, []);
      expect(result.databaseId, '5e5ea5c16897e');
      expect(result.name, 'My Table');
      expect(result.enabled, true);
      expect(result.rowSecurity, true);
      expect(result.columns, []);
      expect(result.indexes, []);
    });
  });
}
