import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DeploymentList', () {
    test('model', () {
      final model = DeploymentList(
        total: 5,
        deployments: [],
      );

      final map = model.toMap();
      final result = DeploymentList.fromMap(map);

            expect(result.total, 5);
                  expect(result.deployments, []);
          });
  });
}
