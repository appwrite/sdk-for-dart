import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Block', () {
    test('model', () {
      final model = Block(
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        resourceType: 'project',
        resourceId: '5e5ea5c16897e',
      );

      final map = model.toMap();
      final result = Block.fromMap(map);

            expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.resourceType, 'project');
                  expect(result.resourceId, '5e5ea5c16897e');
          });
  });
}
