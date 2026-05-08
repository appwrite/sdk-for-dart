import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Salesforce', () {
    test('model', () {
      final model = OAuth2Salesforce(
        $id: 'github',
        enabled: true,
        customerKey:
            '3MVG9I0000000000000000000000000000000000000000000000000000000000000000000000000C5Aejq',
        customerSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Salesforce.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.customerKey,
          '3MVG9I0000000000000000000000000000000000000000000000000000000000000000000000000C5Aejq');
      expect(result.customerSecret, '<CLIENT_SECRET>');
    });
  });
}
