import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsMetricList', () {
    test('model', () {
      final model = AnalyticsMetricList(
        total: 30,
        metrics: [],
      );

      final map = model.toMap();
      final result = AnalyticsMetricList.fromMap(map);

      expect(result.total, 30);
      expect(result.metrics, []);
    });
  });
}
