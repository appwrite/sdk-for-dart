import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Continent', () {
    test('model', () {
      final model = Continent(
        name: 'Europe',
        code: 'EU',
      );

      final map = model.toMap();
      final result = Continent.fromMap(map);

      expect(result.name, 'Europe');
      expect(result.code, 'EU');
    });
  });
}
