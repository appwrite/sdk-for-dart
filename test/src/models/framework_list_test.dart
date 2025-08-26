import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('FrameworkList', () {
    test('model', () {
      final model = FrameworkList(
        total: 5,
        frameworks: [],
      );

      final map = model.toMap();
      final result = FrameworkList.fromMap(map);

            expect(result.total, 5);
                  expect(result.frameworks, []);
          });
  });
}
