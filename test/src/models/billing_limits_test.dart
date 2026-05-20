import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BillingLimits', () {
    test('model', () {
      final model = BillingLimits();

      final map = model.toMap();
      final result = BillingLimits.fromMap(map);
    });
  });
}
