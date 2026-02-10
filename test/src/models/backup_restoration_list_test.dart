import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('BackupRestorationList', () {
    test('model', () {
      final model = BackupRestorationList(
        total: 5,
        restorations: [],
      );

      final map = model.toMap();
      final result = BackupRestorationList.fromMap(map);

      expect(result.total, 5);
      expect(result.restorations, []);
    });
  });
}
