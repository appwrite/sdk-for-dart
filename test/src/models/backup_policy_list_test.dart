import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupPolicyList', () {
    test('model', () {
      final model = BackupPolicyList(
        total: 5,
        policies: [],
      );

      final map = model.toMap();
      final result = BackupPolicyList.fromMap(map);

            expect(result.total, 5);
                  expect(result.policies, []);
          });
  });
}
