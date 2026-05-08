import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyMembershipPrivacy', () {
    test('model', () {
      final model = PolicyMembershipPrivacy(
        $id: 'password-dictionary',
        userId: true,
        userEmail: true,
        userPhone: true,
        userName: true,
        userMFA: true,
      );

      final map = model.toMap();
      final result = PolicyMembershipPrivacy.fromMap(map);

      expect(result.$id, 'password-dictionary');
      expect(result.userId, true);
      expect(result.userEmail, true);
      expect(result.userPhone, true);
      expect(result.userName, true);
      expect(result.userMFA, true);
    });
  });
}
