import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthStatusList', () {
    test('model', () {
      final model = HealthStatusList(
        total: 5,
        statuses: [],
      );

      final map = model.toMap();
      final result = HealthStatusList.fromMap(map);

      expect(result.total, 5);
      expect(result.statuses, []);
    });
  });
}
