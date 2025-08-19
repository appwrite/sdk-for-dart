import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('CountryList', () {
    test('model', () {
      final model = CountryList(
        total: 5,
        countries: [],
      );

      final map = model.toMap();
      final result = CountryList.fromMap(map);

      expect(result.total, 5);
      expect(result.countries, []);
    });
  });
}
