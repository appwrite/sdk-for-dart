import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanLimits', () {
    test('model', () {
      final model = BillingPlanLimits();

      final map = model.toMap();
      final result = BillingPlanLimits.fromMap(map);
    });
  });
}
