import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Facebook', () {
    test('model', () {
      final model = OAuth2Facebook(
        $id: 'github',
        enabled: true,
        appId: '260600000007694',
        appSecret: '2d0b2800000000000000000000d38af4',
      );

      final map = model.toMap();
      final result = OAuth2Facebook.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.appId, '260600000007694');
                  expect(result.appSecret, '2d0b2800000000000000000000d38af4');
          });
  });
}
