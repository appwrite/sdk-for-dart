import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AttributeList', () {
    test('model', () {
      final model = AttributeList(
        total: 5,
        attributes: [],
      );

      final map = model.toMap();
      final result = AttributeList.fromMap(map);

      expect(result.total, 5);
      expect(result.attributes, []);
    });
  });
}
