import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('UsageEventList', () {
    test('model', () {
      final model = UsageEventList(
        total: 5,
        events: [],
      );

      final map = model.toMap();
      final result = UsageEventList.fromMap(map);

      expect(result.total, 5);
      expect(result.events, []);
    });
  });
}
