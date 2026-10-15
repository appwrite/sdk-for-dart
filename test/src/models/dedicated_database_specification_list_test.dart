import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseSpecificationList', () {
    test('model', () {
      final model = DedicatedDatabaseSpecificationList(
        specifications: [],
        total: 9,
      );

      final map = model.toMap();
      final result = DedicatedDatabaseSpecificationList.fromMap(map);

      expect(result.specifications, []);
      expect(result.total, 9);
    });
  });
}
