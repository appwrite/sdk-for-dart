import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Headers', () {
    test('model', () {
      final model = Headers(
        name: 'Content-Type',
        value: 'application/json',
      );

      final map = model.toMap();
      final result = Headers.fromMap(map);

            expect(result.name, 'Content-Type');
                  expect(result.value, 'application/json');
          });
  });
}
