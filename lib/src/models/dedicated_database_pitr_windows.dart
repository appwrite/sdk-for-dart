part of '../../models.dart';

/// PITRWindows
class DedicatedDatabasePITRWindows implements Model {
  /// Earliest available recovery point.
  final String earliest;

  /// Latest available recovery point.
  final String latest;

  DedicatedDatabasePITRWindows({
    required this.earliest,
    required this.latest,
  });
  factory DedicatedDatabasePITRWindows.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabasePITRWindows(
      earliest: map['earliest'].toString(),
      latest: map['latest'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "earliest": earliest,
      "latest": latest,
    };
  }
}
