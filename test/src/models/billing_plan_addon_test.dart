import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanAddon', () {
    test('model', () {
      final model = BillingPlanAddon(
        seats: BillingPlanAddonDetails(
          supported: true,
          planIncluded: 1,
          limit: 5,
          type: 'numeric',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        projects: BillingPlanAddonDetails(
          supported: true,
          planIncluded: 1,
          limit: 5,
          type: 'numeric',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
      );

      final map = model.toMap();
      final result = BillingPlanAddon.fromMap(map);
    });
  });
}
