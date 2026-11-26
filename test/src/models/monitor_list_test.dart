import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('MonitorList', () {
    test('model', () {
      final model = MonitorList(
        total: 5,
        monitors: [],
      );

      final map = model.toMap();
      final result = MonitorList.fromMap(map);

      expect(result.total, 5);
      expect(result.monitors, []);
    });
  });
}
