import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanAddon', () {
    test('model', () {
      final model = BillingPlanAddon();

      final map = model.toMap();
      final result = BillingPlanAddon.fromMap(map);
    });
  });
}
