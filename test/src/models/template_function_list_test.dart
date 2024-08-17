import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('TemplateFunctionList', () {

    test('model', () {
      final model = TemplateFunctionList(
        total: 5,
        templates: [],
      );

      final map = model.toMap();
      final result = TemplateFunctionList.fromMap(map);

      expect(result.total, 5);
      expect(result.templates, []);
    });
  });
}
