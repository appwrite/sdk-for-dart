import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthStatus', () {

    test('model', () {
      final model = HealthStatus(
        ping: 128,
        status: 'pass',
      );

      final map = model.toMap();
      final result = HealthStatus.fromMap(map);

      expect(result.ping, 128);
      expect(result.status, 'pass');
    });
  });
}
