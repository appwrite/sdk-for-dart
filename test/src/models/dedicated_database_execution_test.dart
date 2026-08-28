import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseExecution', () {
    test('model', () {
      final model = DedicatedDatabaseExecution(
        rows: [],
        rowCount: 1,
        columns: [],
        durationMs: 12,
        truncated: true,
        bytes: 1024,
      );

      final map = model.toMap();
      final result = DedicatedDatabaseExecution.fromMap(map);

      expect(result.rows, []);
      expect(result.rowCount, 1);
      expect(result.columns, []);
      expect(result.durationMs, 12);
      expect(result.truncated, true);
      expect(result.bytes, 1024);
    });
  });
}
