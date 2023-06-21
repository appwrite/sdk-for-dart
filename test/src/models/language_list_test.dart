import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('LanguageList', () {

    test('model', () {
      final model = LanguageList(
        total: 5,
        languages: [],
      );

      final map = model.toMap();
      final result = LanguageList.fromMap(map);

      expect(result.total, 5);
      expect(result.languages, []);
    });
  });
}
