import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('SpecificationList', () {

    test('model', () {
      final model = SpecificationList(
        total: 5,
        specifications: [],
      );

      final map = model.toMap();
      final result = SpecificationList.fromMap(map);

      expect(result.total, 5);
      expect(result.specifications, []);
    });
  });
}
