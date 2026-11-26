import 'package:dart_appwrite/models.dart';
import 'package:test/test.dart';

void main() {
  group('VideoCodec', () {
    test('model', () {
      final model = VideoCodec(
        $id: "h264",
        name: "H.264",
        outputs: [],
      );

      final map = model.toMap();
      final result = VideoCodec.fromMap(map);

      expect(result.$id, "h264");
      expect(result.name, "H.264");
      expect(result.outputs, []);
    });
  });
}
