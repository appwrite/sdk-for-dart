import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AdditionalResource', () {
    test('model', () {
      final model = AdditionalResource(
        name: '',
        unit: 'GB',
        currency: 'USD',
        price: 5,
        value: 25,
        invoiceDesc: '',
      );

      final map = model.toMap();
      final result = AdditionalResource.fromMap(map);

            expect(result.name, '');
                  expect(result.unit, 'GB');
                  expect(result.currency, 'USD');
                  expect(result.price, 5);
                  expect(result.value, 25);
                  expect(result.invoiceDesc, '');
          });
  });
}
