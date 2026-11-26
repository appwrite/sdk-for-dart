import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EscalationList', () {
    test('model', () {
      final model = EscalationList(
        total: 5,
        escalations: [],
      );

      final map = model.toMap();
      final result = EscalationList.fromMap(map);

      expect(result.total, 5);
      expect(result.escalations, []);
    });
  });
}
