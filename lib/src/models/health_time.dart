part of '../../models.dart';

/// Health Time
class HealthTime<T> implements Model {
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

  factory HealthTime.fromMap(
    Map<String, dynamic> map, [
    T Function(Map<String, dynamic>)? fromJson,
  ]) {
    return HealthTime(
      remoteTime: map['remoteTime'],
      localTime: map['localTime'],
      diff: map['diff'],
    );
  }

  Map<String, dynamic> toMap() {
    return {"remoteTime": remoteTime, "localTime": localTime, "diff": diff};
  }
}
