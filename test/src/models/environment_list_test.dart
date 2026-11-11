import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('EnvironmentList', () {
    test('model', () {
      final model = EnvironmentList(
        total: 5,
        environments: [],
      );

      final map = model.toMap();
      final result = EnvironmentList.fromMap(map);

      expect(result.total, 5);
      expect(result.environments, []);
    });
  });
}
