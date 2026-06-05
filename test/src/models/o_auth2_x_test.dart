import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2X', () {
    test('model', () {
      final model = OAuth2X(
        $id: 'github',
        enabled: true,
        customerKey: 'slzZV0000000000000NFLaWT',
        secretKey: 'tkEPkp00000000000000000000000000000000000000FTxbI9',
      );

      final map = model.toMap();
      final result = OAuth2X.fromMap(map);

            expect(result.$id, 'github');
                  expect(result.enabled, true);
                  expect(result.customerKey, 'slzZV0000000000000NFLaWT');
                  expect(result.secretKey, 'tkEPkp00000000000000000000000000000000000000FTxbI9');
          });
  });
}
