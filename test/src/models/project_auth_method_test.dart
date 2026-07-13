import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectAuthMethod', () {
    test('model', () {
      final model = ProjectAuthMethod(
        $id: ProjectAuthMethodId.emailPassword,
        enabled: true,
      );

      final map = model.toMap();
      final result = ProjectAuthMethod.fromMap(map);

            expect(result.$id, ProjectAuthMethodId.emailPassword);
                  expect(result.enabled, true);
          });
  });
}
