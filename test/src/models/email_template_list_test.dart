import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EmailTemplateList', () {
    test('model', () {
      final model = EmailTemplateList(
        total: 5,
        templates: [],
      );

      final map = model.toMap();
      final result = EmailTemplateList.fromMap(map);

      expect(result.total, 5);
      expect(result.templates, []);
    });
  });
}
