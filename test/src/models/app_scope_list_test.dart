import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('AppScopeList', () {
    test('model', () {
      final model = AppScopeList(
        total: 5,
        scopes: [],
      );

      final map = model.toMap();
      final result = AppScopeList.fromMap(map);

            expect(result.total, 5);
                  expect(result.scopes, []);
          });
  });
}
