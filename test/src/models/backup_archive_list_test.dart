import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupArchiveList', () {
    test('model', () {
      final model = BackupArchiveList(
        total: 5,
        archives: [],
      );

      final map = model.toMap();
      final result = BackupArchiveList.fromMap(map);

            expect(result.total, 5);
                  expect(result.archives, []);
          });
  });
}
