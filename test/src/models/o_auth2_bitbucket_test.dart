import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Bitbucket', () {
    test('model', () {
      final model = OAuth2Bitbucket(
        $id: 'github',
        enabled: true,
        key: 'Knt70000000000ByRc',
        secret: 'NMfLZJ00000000000000000000TLQdDx',
      );

      final map = model.toMap();
      final result = OAuth2Bitbucket.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.key, 'Knt70000000000ByRc');
                  expect(result.secret, 'NMfLZJ00000000000000000000TLQdDx');
          });
  });
}
