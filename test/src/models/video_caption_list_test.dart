import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('VideoCaptionList', () {
    test('model', () {
      final model = VideoCaptionList(
        total: 5,
        captions: [],
      );

      final map = model.toMap();
      final result = VideoCaptionList.fromMap(map);

      expect(result.total, 5);
      expect(result.captions, []);
    });
  });
}
