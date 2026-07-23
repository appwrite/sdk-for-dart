import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DatabaseStatusReplica', () {
    test('model', () {
      final model = DatabaseStatusReplica(
        index: 0,
        role: 'primary',
        healthy: true,
      );

      final map = model.toMap();
      final result = DatabaseStatusReplica.fromMap(map);

            expect(result.index, 0);
                  expect(result.role, 'primary');
                  expect(result.healthy, true);
          });
  });
}
