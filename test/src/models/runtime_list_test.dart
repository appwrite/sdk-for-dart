import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('RuntimeList', () {

    test('model', () {
      final model = RuntimeList(
        total: 5,
        runtimes: [],
      );

      final map = model.toMap();
      final result = RuntimeList.fromMap(map);

      expect(result.total, 5);
      expect(result.runtimes, []);
    });
  });
}
