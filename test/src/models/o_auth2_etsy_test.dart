import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Etsy', () {
    test('model', () {
      final model = OAuth2Etsy(
        $id: 'github',
        enabled: true,
        keyString: 'nsgzxh0000000000008j85a2',
        sharedSecret: 'tp000000ru',
      );

      final map = model.toMap();
      final result = OAuth2Etsy.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.keyString, 'nsgzxh0000000000008j85a2');
                  expect(result.sharedSecret, 'tp000000ru');
          });
  });
}
