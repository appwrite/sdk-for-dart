import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Oauth2Authorize', () {
    test('model', () {
      final model = Oauth2Authorize(
        grantId: '5e5ea5c16897e',
        redirectUrl: 'https://example.com/callback?code=abcde&state=fghij',
      );

      final map = model.toMap();
      final result = Oauth2Authorize.fromMap(map);

            expect(result.grantId, '5e5ea5c16897e');
                  expect(result.redirectUrl, 'https://example.com/callback?code=abcde&state=fghij');
          });
  });
}
