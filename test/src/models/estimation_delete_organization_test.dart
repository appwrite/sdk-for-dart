import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EstimationDeleteOrganization', () {
    test('model', () {
      final model = EstimationDeleteOrganization(
        unpaidInvoices: [],
      );

      final map = model.toMap();
      final result = EstimationDeleteOrganization.fromMap(map);

            expect(result.unpaidInvoices, []);
          });
  });
}
