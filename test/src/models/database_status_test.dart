import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseStatus', () {
    test('model', () {
      final model = DatabaseStatus(
        health: 'healthy',
        ready: true,
        engine: 'postgresql',
        version: '17',
        uptime: 86400,
        connections: DatabaseStatusConnections(
    current: 12,
    max: 100,
  ),
        replicas: [],
        volumes: [],
      );

      final map = model.toMap();
      final result = DatabaseStatus.fromMap(map);

            expect(result.health, 'healthy');
                  expect(result.ready, true);
                  expect(result.engine, 'postgresql');
                  expect(result.version, '17');
                  expect(result.uptime, 86400);
                        expect(result.replicas, []);
                  expect(result.volumes, []);
          });
  });
}
