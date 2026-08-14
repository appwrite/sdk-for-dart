import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Gitlab', () {
    test('model', () {
      final model = OAuth2Gitlab(
        $id: 'github',
        enabled: true,
        applicationId: 'd41ffe0000000000000000000000000000000000000000000000000000d5e252',
        secret: 'gloas-838cfa0000000000000000000000000000000000000000000000000000ecbb38',
        endpoint: 'https://gitlab.com',
      );

      final map = model.toMap();
      final result = OAuth2Gitlab.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.applicationId, 'd41ffe0000000000000000000000000000000000000000000000000000d5e252');
                  expect(result.secret, 'gloas-838cfa0000000000000000000000000000000000000000000000000000ecbb38');
                  expect(result.endpoint, 'https://gitlab.com');
          });
  });
}
