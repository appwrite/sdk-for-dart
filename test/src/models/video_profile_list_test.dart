import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('VideoProfileList', () {
    test('model', () {
      final model = VideoProfileList(
        total: 5,
        profiles: [],
      );

      final map = model.toMap();
      final result = VideoProfileList.fromMap(map);

      expect(result.total, 5);
      expect(result.profiles, []);
    });
  });
}
