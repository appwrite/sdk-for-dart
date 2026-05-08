import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Apple', () {
    test('model', () {
      final model = OAuth2Apple(
        $id: 'apple',
        enabled: true,
        serviceId: 'ip.appwrite.app.web',
        keyId: 'P4000000N8',
        teamId: 'D4000000R6',
        p8File:
            '-----BEGIN PRIVATE KEY-----MIGTAg...jy2Xbna-----END PRIVATE KEY-----',
      );

      final map = model.toMap();
      final result = OAuth2Apple.fromMap(map);

      expect(result.$id, 'apple');
      expect(result.enabled, true);
      expect(result.serviceId, 'ip.appwrite.app.web');
      expect(result.keyId, 'P4000000N8');
      expect(result.teamId, 'D4000000R6');
      expect(result.p8File,
          '-----BEGIN PRIVATE KEY-----MIGTAg...jy2Xbna-----END PRIVATE KEY-----');
    });
  });
}
