import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectProtocol', () {
    test('model', () {
      final model = ProjectProtocol(
        $id: ProjectProtocolId.rest,
        enabled: true,
      );

      final map = model.toMap();
      final result = ProjectProtocol.fromMap(map);

            expect(result.$id, ProjectProtocolId.rest);
                  expect(result.enabled, true);
          });
  });
}
