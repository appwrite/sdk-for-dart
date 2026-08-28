import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabaseExtensions', () {
    test('model', () {
      final model = DedicatedDatabaseExtensions(
        installed: [],
        available: [],
        metadata: [],
      );

      final map = model.toMap();
      final result = DedicatedDatabaseExtensions.fromMap(map);

      expect(result.installed, []);
      expect(result.available, []);
      expect(result.metadata, []);
    });
  });
}
