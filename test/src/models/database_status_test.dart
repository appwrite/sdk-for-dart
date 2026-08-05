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
        syncMode: 'async',
        syncDegraded: true,
        syncAcknowledgements: 1,
        syncStandbyCount: 2,
        syncStateConfirmed: true,
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
                        expect(result.syncMode, 'async');
                  expect(result.syncDegraded, true);
                  expect(result.syncAcknowledgements, 1);
                  expect(result.syncStandbyCount, 2);
                  expect(result.syncStateConfirmed, true);
                  expect(result.replicas, []);
                  expect(result.volumes, []);
          });
  });
}
