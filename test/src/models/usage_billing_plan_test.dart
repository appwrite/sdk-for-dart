import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageBillingPlan', () {
    test('model', () {
      final model = UsageBillingPlan();

      final map = model.toMap();
      final result = UsageBillingPlan.fromMap(map);
    });
  });
}
