import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('VideoList', () {
    test('model', () {
      final model = VideoList(
        total: 5,
        videos: [],
      );

      final map = model.toMap();
      final result = VideoList.fromMap(map);

      expect(result.total, 5);
      expect(result.videos, []);
    });
  });
}
