import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('KeyList', () {
    test('model', () {
      final model = KeyList(
        total: 5,
        keys: [],
      );

      final map = model.toMap();
      final result = KeyList.fromMap(map);

      expect(result.total, 5);
      expect(result.keys, []);
    });
  });
}
