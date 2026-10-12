import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DomainPricesList', () {
    test('model', () {
      final model = DomainPricesList(
        total: 5,
        prices: [],
      );

      final map = model.toMap();
      final result = DomainPricesList.fromMap(map);

      expect(result.total, 5);
      expect(result.prices, []);
    });
  });
}
