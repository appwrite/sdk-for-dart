import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Paypal', () {
    test('model', () {
      final model = OAuth2Paypal(
        $id: 'github',
        enabled: true,
        clientId:
            'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB',
        secretKey:
            'EH8KCXtew--000000000000000000000000000000000000000_C-1_5UP_000000000000000CB7KDp',
      );

      final map = model.toMap();
      final result = OAuth2Paypal.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.clientId,
          'AdhIEG7-000000000000-0000000000000000000000000000000-0000000000000000000000-2pyB');
      expect(result.secretKey,
          'EH8KCXtew--000000000000000000000000000000000000000_C-1_5UP_000000000000000CB7KDp');
    });
  });
}
