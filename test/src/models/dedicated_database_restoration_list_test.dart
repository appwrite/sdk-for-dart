import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseRestorationList', () {
    test('model', () {
      final model = DedicatedDatabaseRestorationList(
        total: 5,
        restorations: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseRestorationList.fromMap(map);

      expect(result.total, 5);
      expect(result.restorations, []);
    });
  });
}
