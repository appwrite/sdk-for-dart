import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Amazon', () {
    test('model', () {
      final model = OAuth2Amazon(
        $id: 'github',
        enabled: true,
        clientId:
            'amzn1.application-oa2-client.87400c00000000000000000000063d5b2',
        clientSecret:
            '79ffe4000000000000000000000000000000000000000000000000000002de55',
      );

      final map = model.toMap();
      final result = OAuth2Amazon.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId,
          'amzn1.application-oa2-client.87400c00000000000000000000063d5b2');
      expect(result.clientSecret,
          '79ffe4000000000000000000000000000000000000000000000000000002de55');
    });
  });
}
