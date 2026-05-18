import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageEvent', () {
    test('model', () {
      final model = UsageEvent(
        metric: 'bandwidth',
        value: 5000,
        time: '2026-04-09T12:00:00.000+00:00',
        path: '/v1/storage/files',
        method: 'POST',
        status: '201',
        resourceType: 'bucket',
        resourceId: 'abc123',
        countryCode: 'US',
        userAgent: 'AppwriteSDK/1.0',
      );

      final map = model.toMap();
      final result = UsageEvent.fromMap(map);

            expect(result.metric, 'bandwidth');
                  expect(result.value, 5000);
                  expect(result.time, '2026-04-09T12:00:00.000+00:00');
                  expect(result.path, '/v1/storage/files');
                  expect(result.method, 'POST');
                  expect(result.status, '201');
                  expect(result.resourceType, 'bucket');
                  expect(result.resourceId, 'abc123');
                  expect(result.countryCode, 'US');
                  expect(result.userAgent, 'AppwriteSDK/1.0');
          });
  });
}
