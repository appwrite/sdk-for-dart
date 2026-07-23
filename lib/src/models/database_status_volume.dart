part of '../../models.dart';

/// Volume
class DatabaseStatusVolume implements Model {
  /// Mount path of the volume.
  final String path;

  /// Percentage of storage used.
  final String usedPercent;

  /// Available storage space.
  final String available;

  /// Whether the volume is mounted.
  final bool mounted;

  DatabaseStatusVolume({
    required this.path,
    required this.usedPercent,
    required this.available,
    required this.mounted,
  });

  factory DatabaseStatusVolume.fromMap(Map<String, dynamic> map) {
    return DatabaseStatusVolume(
      path: map['path'].toString(),
      usedPercent: map['usedPercent'].toString(),
      available: map['available'].toString(),
      mounted: map['mounted'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "path": path,
      "usedPercent": usedPercent,
      "available": available,
      "mounted": mounted,
    };
  }
}
