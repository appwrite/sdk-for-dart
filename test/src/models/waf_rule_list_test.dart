import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('WafRuleList', () {
    test('model', () {
      final model = WafRuleList(
        total: 5,
        rules: [],
      );

      final map = model.toMap();
      final result = WafRuleList.fromMap(map);

      expect(result.total, 5);
      expect(result.rules, []);
    });
  });
}
