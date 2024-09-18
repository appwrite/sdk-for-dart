part of '../../models.dart';

/// Health Time
class HealthTime implements Model {
  /// Current unix timestamp on trustful remote server.
  final int remoteTime;

  /// Current unix timestamp of local server where Appwrite runs.
  final int localTime;

  /// Difference of unix remote and local timestamps in milliseconds.
  final int diff;

  HealthTime({
    required this.remoteTime,
    required this.localTime,
    required this.diff,
  });

  factory HealthTime.fromMap(Map<String, dynamic> map) {
    return HealthTime(
      remoteTime: (map['remoteTime'] is String)
          ? int.tryParse(map['remoteTime']) ?? 0
          : map['remoteTime'] ?? 0,
      localTime: (map['localTime'] is String)
          ? int.tryParse(map['localTime']) ?? 0
          : map['localTime'] ?? 0,
      diff: (map['diff'] is String)
          ? int.tryParse(map['diff']) ?? 0
          : map['diff'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "remoteTime": remoteTime,
      "localTime": localTime,
      "diff": diff,
    };
  }
}
