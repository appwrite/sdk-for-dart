import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AuthProvider', () {
    test('model', () {
      final model = AuthProvider(
        key: 'github',
        name: 'GitHub',
        appId: '259125845563242502',
        secret: 'Bpw_g9c2TGXxfgLshDbSaL8tsCcqgczQ',
        enabled: true,
      );

      final map = model.toMap();
      final result = AuthProvider.fromMap(map);

      expect(result.key, 'github');
      expect(result.name, 'GitHub');
      expect(result.appId, '259125845563242502');
      expect(result.secret, 'Bpw_g9c2TGXxfgLshDbSaL8tsCcqgczQ');
      expect(result.enabled, true);
    });
  });
}
