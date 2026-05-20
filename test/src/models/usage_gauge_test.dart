import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageGauge', () {
    test('model', () {
      final model = UsageGauge(
        metric: 'users',
        value: 1500,
        time: '2026-04-09T12:00:00.000+00:00',
      );

      final map = model.toMap();
      final result = UsageGauge.fromMap(map);

            expect(result.metric, 'users');
                  expect(result.value, 1500);
                  expect(result.time, '2026-04-09T12:00:00.000+00:00');
          });
  });
}
