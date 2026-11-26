import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EscalationStep', () {
    test('model', () {
      final model = EscalationStep(
        delay: 600,
        roles: [],
        userIds: [],
      );

      final map = model.toMap();
      final result = EscalationStep.fromMap(map);

      expect(result.delay, 600);
      expect(result.roles, []);
      expect(result.userIds, []);
    });
  });
}
