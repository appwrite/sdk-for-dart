import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('OAuth2Dropbox', () {
    test('model', () {
      final model = OAuth2Dropbox(
        $id: 'github',
        enabled: true,
        appKey: 'jl000000000009t',
        appSecret: '<CLIENT_SECRET>',
      );

      final map = model.toMap();
      final result = OAuth2Dropbox.fromMap(map);

      expect(result.$id, 'github');
      expect(result.enabled, true);
      expect(result.appKey, 'jl000000000009t');
      expect(result.appSecret, '<CLIENT_SECRET>');
    });
  });
}
