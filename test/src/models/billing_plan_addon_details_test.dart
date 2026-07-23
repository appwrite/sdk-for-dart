import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanAddonDetails', () {
    test('model', () {
      final model = BillingPlanAddonDetails(
        supported: true,
        planIncluded: 1,
        limit: 5,
        type: 'numeric',
        currency: 'USD',
        price: 5,
        value: 25,
        invoiceDesc: '',
      );

      final map = model.toMap();
      final result = BillingPlanAddonDetails.fromMap(map);

            expect(result.supported, true);
                  expect(result.planIncluded, 1);
                  expect(result.limit, 5);
                  expect(result.type, 'numeric');
                  expect(result.currency, 'USD');
                  expect(result.price, 5);
                  expect(result.value, 25);
                  expect(result.invoiceDesc, '');
          });
  });
}
