import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AppSecretList', () {
    test('model', () {
      final model = AppSecretList(
        total: 5,
        secrets: [],
      );

      final map = model.toMap();
      final result = AppSecretList.fromMap(map);

      expect(result.total, 5);
      expect(result.secrets, []);
    });
  });
}
