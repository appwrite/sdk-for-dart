import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Index', () {
    test('model', () {
      final model = Index(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        $updatedAt: '2020-10-15T06:38:00.000+00:00',
        key: 'index1',
        type: 'primary',
        status: 'available',
        error: 'string',
        attributes: [],
        lengths: [],
      );

      final map = model.toMap();
      final result = Index.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.$updatedAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.key, 'index1');
                  expect(result.type, 'primary');
                  expect(result.status, 'available');
                  expect(result.error, 'string');
                  expect(result.attributes, []);
                  expect(result.lengths, []);
          });
  });
}
