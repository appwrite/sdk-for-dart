import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('HealthStatus', () {
    test('model', () {
      final model = HealthStatus(
        name: 'database',
        ping: 128,
        status: HealthCheckStatus.pass,
      );

      final map = model.toMap();
      final result = HealthStatus.fromMap(map);

      expect(result.name, 'database');
      expect(result.ping, 128);
      expect(result.status, HealthCheckStatus.pass);
    });
  });
}
