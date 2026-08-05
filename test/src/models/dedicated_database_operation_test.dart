import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseOperation', () {
    test('model', () {
      final model = DedicatedDatabaseOperation(
        $id: '5e5ea5c16897e',
        $createdAt: '2020-10-15T06:38:00.000+00:00',
        databaseId: '5e5ea5c16897e',
        type: 'update',
        status: 'completed',
        attempts: 1,
        errorCode: 'LockLost',
        errorMessage: '',
      );

      final map = model.toMap();
      final result = DedicatedDatabaseOperation.fromMap(map);

            expect(result.$id, '5e5ea5c16897e');
                  expect(result.$createdAt, '2020-10-15T06:38:00.000+00:00');
                  expect(result.databaseId, '5e5ea5c16897e');
                  expect(result.type, 'update');
                  expect(result.status, 'completed');
                  expect(result.attempts, 1);
                  expect(result.errorCode, 'LockLost');
                  expect(result.errorMessage, '');
          });
  });
}
