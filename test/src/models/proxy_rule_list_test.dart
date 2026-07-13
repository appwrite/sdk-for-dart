import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('ProxyRuleList', () {
    test('model', () {
      final model = ProxyRuleList(
        total: 5,
        rules: [],
      );

      final map = model.toMap();
      final result = ProxyRuleList.fromMap(map);

            expect(result.total, 5);
                  expect(result.rules, []);
          });
  });
}
