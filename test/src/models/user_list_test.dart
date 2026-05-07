import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UserList', () {
    test('model', () {
      final model = UserList(
        total: 5,
        users: [],
      );

      final map = model.toMap();
      final result = UserList.fromMap(map);

            expect(result.total, 5);
                  expect(result.users, []);
          });
  });
}
