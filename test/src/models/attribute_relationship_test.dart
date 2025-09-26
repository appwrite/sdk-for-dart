import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeRelationship', () {
    test('model', () {
      final model = AttributeRelationship(
        key: 'fullName',
        type: 'string',
        status: AttributeStatus.available,
        error: 'string',
        xrequired: true,
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
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
                  expect(result.status, AttributeStatus.available);
                  expect(result.error, 'string');
                  expect(result.xrequired, true);
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.relatedCollection, 'collection');
                  expect(result.relationType, 'oneToOne|oneToMany|manyToOne|manyToMany');
                  expect(result.twoWay, true);
                  expect(result.twoWayKey, 'string');
                  expect(result.onDelete, 'restrict|cascade|setNull');
                  expect(result.side, 'parent|child');
          });
  });
}
