import 'package:dart_appwrite/models.dart';
import 'package:dart_appwrite/enums.dart';
import 'package:test/test.dart';

void main() {
  group('VideoProfile', () {
    test('model', () {
      final model = VideoProfile(
        $id: "5e5ea5c16897e",
        $createdAt: "2020-10-15T06:38:00.000+00:00",
        $updatedAt: "2020-10-15T06:38:00.000+00:00",
        name: "360p",
        codec: VideoCodecId.h264,
        videoBitRate: 890000,
        audioBitRate: 64000,
        width: 640,
        height: 360,
      );

      final map = model.toMap();
      final result = VideoProfile.fromMap(map);

      expect(result.$id, "5e5ea5c16897e");
      expect(result.$createdAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.$updatedAt, "2020-10-15T06:38:00.000+00:00");
      expect(result.name, "360p");
      expect(result.codec, VideoCodecId.h264);
      expect(result.videoBitRate, 890000);
      expect(result.audioBitRate, 64000);
      expect(result.width, 640);
      expect(result.height, 360);
    });
  });
}
