import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyDenyRealtimeGuests', () {
    test('model', () {
      final model = PolicyDenyRealtimeGuests(
        $id: "password-dictionary",
        enabled: true,
      );

      final map = model.toMap();
      final result = PolicyDenyRealtimeGuests.fromMap(map);

      expect(result.$id, "password-dictionary");
      expect(result.enabled, true);
    });
  });
}
