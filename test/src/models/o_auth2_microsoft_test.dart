import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Microsoft', () {
    test('model', () {
      final model = OAuth2Microsoft(
        $id: 'github',
        enabled: true,
        applicationId: '00001111-aaaa-2222-bbbb-3333cccc4444',
        applicationSecret: 'your-oauth2-client-secret',
        tenant: 'common',
      );

      final map = model.toMap();
      final result = OAuth2Microsoft.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.applicationId, '00001111-aaaa-2222-bbbb-3333cccc4444');
                  expect(result.applicationSecret, 'your-oauth2-client-secret');
                  expect(result.tenant, 'common');
          });
  });
}
