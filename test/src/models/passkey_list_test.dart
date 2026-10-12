import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PasskeyList', () {
    test('model', () {
      final model = PasskeyList(
        total: 5,
        passkeys: [],
      );

      final map = model.toMap();
      final result = PasskeyList.fromMap(map);

      expect(result.total, 5);
      expect(result.passkeys, []);
    });
  });
}
