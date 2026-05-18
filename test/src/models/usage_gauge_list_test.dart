import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageGaugeList', () {
    test('model', () {
      final model = UsageGaugeList(
        total: 5,
        gauges: [],
      );

      final map = model.toMap();
      final result = UsageGaugeList.fromMap(map);

      expect(result.total, 5);
      expect(result.gauges, []);
    });
  });
}
