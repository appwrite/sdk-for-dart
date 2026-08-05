import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageBillingPlan', () {
    test('model', () {
      final model = UsageBillingPlan(
        bandwidth: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        executions: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        realtime: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        realtimeMessages: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        storage: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        users: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        GBHours: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
        imageTransformations: AdditionalResource(
          name: '',
          unit: 'GB',
          currency: 'USD',
          price: 5,
          value: 25,
          invoiceDesc: '',
        ),
      );

      final map = model.toMap();
      final result = UsageBillingPlan.fromMap(map);
    });
  });
}
