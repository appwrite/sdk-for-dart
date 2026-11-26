part of '../../models.dart';

/// Video Profiles List
class VideoProfileList implements Model {
  /// Total number of profiles that matched your query.
  final int total;

  /// List of profiles.
  final List<VideoProfile> profiles;

  VideoProfileList({
    required this.total,
    required this.profiles,
  });
  factory VideoProfileList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'profiles': [],
      ...map,
    };

    return VideoProfileList(
      total: map['total'],
      profiles: List<VideoProfile>.from(
        map['profiles'].map((p) => VideoProfile.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "profiles": profiles.map((p) => p.toMap()).toList(),
    };
  }
}
