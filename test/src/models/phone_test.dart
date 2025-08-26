import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Phone', () {
    test('model', () {
      final model = Phone(
        code: '+1',
        countryCode: 'US',
        countryName: 'United States',
      );

      final map = model.toMap();
      final result = Phone.fromMap(map);

            expect(result.code, '+1');
                  expect(result.countryCode, 'US');
                  expect(result.countryName, 'United States');
          });
  });
}
