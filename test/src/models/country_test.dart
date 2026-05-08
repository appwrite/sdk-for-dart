import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Country', () {
    test('model', () {
      final model = Country(
        name: 'United States',
        code: 'US',
      );

      final map = model.toMap();
      final result = Country.fromMap(map);

      expect(result.name, 'United States');
      expect(result.code, 'US');
    });
  });
}
