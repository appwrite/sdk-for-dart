import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('FileList', () {
    test('model', () {
      final model = FileList(
        total: 5,
        files: [],
      );

      final map = model.toMap();
      final result = FileList.fromMap(map);

            expect(result.total, 5);
                  expect(result.files, []);
          });
  });
}
