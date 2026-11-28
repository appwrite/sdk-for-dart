import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AnalyticsMetric', () {
    test('model', () {
      final model = AnalyticsMetric(
        visitors: 1234,
        sessions: 4567,
        events: 8910,
      );

      final map = model.toMap();
      final result = AnalyticsMetric.fromMap(map);

      expect(result.visitors, 1234);
      expect(result.sessions, 4567);
      expect(result.events, 8910);
    });
  });
}
