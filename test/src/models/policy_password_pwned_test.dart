import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyPasswordPwned', () {
    test('model', () {
      final model = PolicyPasswordPwned(
        $id: "password-dictionary",
        enabled: true,
        sessions: true,
        users: true,
      );

      final map = model.toMap();
      final result = PolicyPasswordPwned.fromMap(map);

      expect(result.$id, "password-dictionary");
      expect(result.enabled, true);
      expect(result.sessions, true);
      expect(result.users, true);
    });
  });
}
