import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectService', () {
    test('model', () {
      final model = ProjectService(
        $id: ProjectServiceId.account,
        enabled: true,
      );

      final map = model.toMap();
      final result = ProjectService.fromMap(map);

            expect(result.$id, ProjectServiceId.account);
                  expect(result.enabled, true);
          });
  });
}
