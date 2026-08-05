import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseReplicas', () {
    test('model', () {
      final model = DedicatedDatabaseReplicas(
        replicas: 2,
        syncMode: 'async',
        syncDegraded: true,
        syncAcknowledgements: 1,
        syncStandbyCount: 2,
        syncStateConfirmed: true,
        members: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseReplicas.fromMap(map);

      expect(result.replicas, 2);
      expect(result.syncMode, 'async');
      expect(result.syncDegraded, true);
      expect(result.syncAcknowledgements, 1);
      expect(result.syncStandbyCount, 2);
      expect(result.syncStateConfirmed, true);
      expect(result.members, []);
    });
  });
}
