import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseMember', () {
    test('model', () {
      final model = DedicatedDatabaseMember(
        $id: '1',
        role: 'replica',
        status: 'active',
        lagSeconds: 0.5,
      );

      final map = model.toMap();
      final result = DedicatedDatabaseMember.fromMap(map);

      expect(result.$id, '1');
      expect(result.role, 'replica');
      expect(result.status, 'active');
      expect(result.lagSeconds, 0.5);
    });
  });
}
