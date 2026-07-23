import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseReplicas', () {
    test('model', () {
      final model = DedicatedDatabaseReplicas(
        replicas: 2,
        syncMode: 'async',
        members: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseReplicas.fromMap(map);

            expect(result.replicas, 2);
                  expect(result.syncMode, 'async');
                  expect(result.members, []);
          });
  });
}
