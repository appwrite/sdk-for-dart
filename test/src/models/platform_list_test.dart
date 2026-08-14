import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('PlatformList', () {
    test('model', () {
      final model = PlatformList(
        total: 5,
        platforms: [],
      );

      final map = model.toMap();
      final result = PlatformList.fromMap(map);

      expect(result.total, 5);
      expect(result.platforms, []);
    });
  });
}
