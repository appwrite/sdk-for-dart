import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingLimits', () {
    test('model', () {
      final model = BillingLimits(
        bandwidth: 5,
        storage: 150,
        users: 200000,
        executions: 750000,
        GBHours: 100,
        imageTransformations: 100,
        authPhone: 10,
        budgetLimit: 100,
      );

      final map = model.toMap();
      final result = BillingLimits.fromMap(map);

            expect(result.bandwidth, 5);
                  expect(result.storage, 150);
                  expect(result.users, 200000);
                  expect(result.executions, 750000);
                  expect(result.GBHours, 100);
                  expect(result.imageTransformations, 100);
                  expect(result.authPhone, 10);
                  expect(result.budgetLimit, 100);
          });
  });
}
