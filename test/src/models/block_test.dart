import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Block', () {
    test('model', () {
      final model = Block(
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        resourceType: 'project',
        resourceId: '5e5ea5c16897e',
        projectName: 'My Project',
        region: 'fra',
        organizationName: 'Acme Inc.',
        organizationId: '5e5ea5c16897e',
        billingPlan: 'pro',
      );

      final map = model.toMap();
      final result = Block.fromMap(map);

            expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.resourceType, 'project');
                  expect(result.resourceId, '5e5ea5c16897e');
                  expect(result.projectName, 'My Project');
                  expect(result.region, 'fra');
                  expect(result.organizationName, 'Acme Inc.');
                  expect(result.organizationId, '5e5ea5c16897e');
                  expect(result.billingPlan, 'pro');
          });
  });
}
