import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('HealthTime', () {

    test('model', () {
      final model = HealthTime(
        remoteTime: 1639490751,
        localTime: 1639490844,
        diff: 93,
      );

      final map = model.toMap();
      final result = HealthTime.fromMap(map);

      expect(result.remoteTime, 1639490751);
      expect(result.localTime, 1639490844);
      expect(result.diff, 93);
    });
  });
}
