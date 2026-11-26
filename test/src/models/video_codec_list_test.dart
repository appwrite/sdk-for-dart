import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('VideoCodecList', () {
    test('model', () {
      final model = VideoCodecList(
        total: 5,
        codecs: [],
      );

      final map = model.toMap();
      final result = VideoCodecList.fromMap(map);

      expect(result.total, 5);
      expect(result.codecs, []);
    });
  });
}
