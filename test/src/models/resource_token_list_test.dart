import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ResourceTokenList', () {

    test('model', () {
      final model = ResourceTokenList(
        total: 5,
        tokens: [],
      );

      final map = model.toMap();
      final result = ResourceTokenList.fromMap(map);

      expect(result.total, 5);
      expect(result.tokens, []);
    });
  });
}
