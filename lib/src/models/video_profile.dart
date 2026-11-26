part of '../../models.dart';

/// Video profile
class VideoProfile implements Model {
  /// Video profile ID.
  final String $id;

  /// Video profile creation time in ISO 8601 format.
  final String $createdAt;

  /// Video profile update date in ISO 8601 format.
  final String $updatedAt;

  /// Video profile name.
  final String name;

  /// Video encode codec: one of `h264`, `hevc`, or `vp9`.
  final enums.VideoCodecId codec;

  /// Target video bitrate in bits per second.
  final int videoBitRate;

  /// Target audio bitrate in bits per second.
  final int audioBitRate;

  /// Target video width in pixels.
  final int width;

  /// Target video height in pixels.
  final int height;

  VideoProfile({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.name,
    required this.codec,
    required this.videoBitRate,
    required this.audioBitRate,
    required this.width,
    required this.height,
  });
  factory VideoProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      '\$updatedAt': "",
      'name': "",
      'codec': "h264",
      'videoBitRate': 0,
      'audioBitRate': 0,
      'width': 0,
      'height': 0,
      ...map,
    };

    return VideoProfile(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      name: map['name'].toString(),
      codec: enums.VideoCodecId.values.firstWhere(
        (e) => e.value == map['codec'],
      ),
      videoBitRate: map['videoBitRate'],
      audioBitRate: map['audioBitRate'],
      width: map['width'],
      height: map['height'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "name": name,
      "codec": codec.value,
      "videoBitRate": videoBitRate,
      "audioBitRate": audioBitRate,
      "width": width,
      "height": height,
    };
  }
}
