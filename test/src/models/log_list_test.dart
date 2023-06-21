import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('LogList', () {

    test('model', () {
      final model = LogList(
        total: 5,
        logs: [],
      );

      final map = model.toMap();
      final result = LogList.fromMap(map);

      expect(result.total, 5);
      expect(result.logs, []);
    });
  });
}
