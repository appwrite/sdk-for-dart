import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Microsoft', () {
    test('model', () {
      final model = OAuth2Microsoft(
        $id: 'github',
        enabled: true,
        applicationId: '00001111-aaaa-2222-bbbb-3333cccc4444',
        applicationSecret: 'A1bC2dE3fH4iJ5kL6mN7oP8qR9sT0u',
        tenant: 'common',
      );

      final map = model.toMap();
      final result = OAuth2Microsoft.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.applicationId, '00001111-aaaa-2222-bbbb-3333cccc4444');
                  expect(result.applicationSecret, 'A1bC2dE3fH4iJ5kL6mN7oP8qR9sT0u');
                  expect(result.tenant, 'common');
          });
  });
}
