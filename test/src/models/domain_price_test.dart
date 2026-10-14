import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DomainPrice', () {
    test('model', () {
      final model = DomainPrice(
        domain: "example.com",
        tld: "com",
        available: true,
        periodYears: 1,
        premium: true,
        renewalPeriodYears: 1,
      );

      final map = model.toMap();
      final result = DomainPrice.fromMap(map);

      expect(result.domain, "example.com");
      expect(result.tld, "com");
      expect(result.available, true);
      expect(result.periodYears, 1);
      expect(result.premium, true);
      expect(result.renewalPeriodYears, 1);
    });
  });
}
