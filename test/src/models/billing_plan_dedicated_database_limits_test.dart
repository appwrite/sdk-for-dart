import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanDedicatedDatabaseLimits', () {
    test('model', () {
      final model = BillingPlanDedicatedDatabaseLimits();

      final map = model.toMap();
      final result = BillingPlanDedicatedDatabaseLimits.fromMap(map);
    });
  });
}
