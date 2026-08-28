import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('DedicatedDatabasePITRWindows', () {
    test('model', () {
      final model = DedicatedDatabasePITRWindows(
        earliest: "2020-10-15T06:38:00.000+00:00",
        latest: "2020-10-15T06:38:00.000+00:00",
      );

      final map = model.toMap();
      final result = DedicatedDatabasePITRWindows.fromMap(map);

      expect(result.earliest, "2020-10-15T06:38:00.000+00:00");
      expect(result.latest, "2020-10-15T06:38:00.000+00:00");
    });
  });
}
