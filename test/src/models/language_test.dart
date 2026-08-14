import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('Language', () {
    test('model', () {
      final model = Language(
        name: 'Italian',
        code: 'it',
        nativeName: 'Italiano',
      );

      final map = model.toMap();
      final result = Language.fromMap(map);

      expect(result.name, 'Italian');
      expect(result.code, 'it');
      expect(result.nativeName, 'Italiano');
    });
  });
}
