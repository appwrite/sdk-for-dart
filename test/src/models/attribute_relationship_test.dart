import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeRelationship', () {

    test('model', () {
      final model = AttributeRelationship(
        key: 'fullName',
        type: 'string',
        status: 'available',
        error: 'string',
        xrequired: true,
        relatedCollection: 'collection',
        relationType: 'oneToOne|oneToMany|manyToOne|manyToMany',
        twoWay: true,
        twoWayKey: 'string',
        onDelete: 'restrict|cascade|setNull',
        side: 'parent|child',
      );

      final map = model.toMap();
      final result = AttributeRelationship.fromMap(map);

      expect(result.key, 'fullName');
      expect(result.type, 'string');
      expect(result.status, 'available');
      expect(result.error, 'string');
      expect(result.xrequired, true);
      expect(result.relatedCollection, 'collection');
      expect(result.relationType, 'oneToOne|oneToMany|manyToOne|manyToMany');
      expect(result.twoWay, true);
      expect(result.twoWayKey, 'string');
      expect(result.onDelete, 'restrict|cascade|setNull');
      expect(result.side, 'parent|child');
    });
  });
}
