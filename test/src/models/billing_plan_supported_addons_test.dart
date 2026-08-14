import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingPlanSupportedAddons', () {
    test('model', () {
      final model = BillingPlanSupportedAddons(
        baa: true,
        premiumGeoDB: true,
        premiumGeoDBOrg: true,
      );

      final map = model.toMap();
      final result = BillingPlanSupportedAddons.fromMap(map);

            expect(result.baa, true);
                  expect(result.premiumGeoDB, true);
                  expect(result.premiumGeoDBOrg, true);
          });
  });
}
