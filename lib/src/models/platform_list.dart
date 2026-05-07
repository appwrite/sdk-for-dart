part of '../../models.dart';

/// Platforms List
class PlatformList implements Model {
    /// Total number of platforms in the given project.
    final int total;

    /// List of platforms.
    final List platforms;

    PlatformList({
        required this.total,
        required this.platforms,
    });

    factory PlatformList.fromMap(Map<String, dynamic> map) {
        return PlatformList(
            total: map['total'],
            platforms: List.from(map['platforms'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "platforms": platforms,
        };
    }
}
