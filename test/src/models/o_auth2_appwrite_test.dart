import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Appwrite', () {
    test('model', () {
      final model = OAuth2Appwrite(
        $id: 'github',
        enabled: true,
        clientId: '6a42000000000000b5a0',
        clientSecret: 'b86afd000000000000000000000000000000000000000000000000000ced5f93',
      );

      final map = model.toMap();
      final result = OAuth2Appwrite.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.clientId, '6a42000000000000b5a0');
                  expect(result.clientSecret, 'b86afd000000000000000000000000000000000000000000000000000ced5f93');
          });
  });
}
