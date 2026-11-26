import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('AlertList', () {
    test('model', () {
      final model = AlertList(
        total: 5,
        alerts: [],
      );

      final map = model.toMap();
      final result = AlertList.fromMap(map);

      expect(result.total, 5);
      expect(result.alerts, []);
    });
  });
}
