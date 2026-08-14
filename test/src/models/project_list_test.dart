import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('ProjectList', () {
    test('model', () {
      final model = ProjectList(
        total: 5,
        projects: [],
      );

      final map = model.toMap();
      final result = ProjectList.fromMap(map);

            expect(result.total, 5);
                  expect(result.projects, []);
          });
  });
}
