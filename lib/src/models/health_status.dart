part of '../../models.dart';

/// Health Status
class HealthStatus implements Model {
  /// Name of the service.
  final String name;

  /// Duration in milliseconds how long the health check took.
  final int ping;

  /// Service status. Possible values can are: `pass`, `fail`
  final String status;

  HealthStatus({
    required this.name,
    required this.ping,
    required this.status,
  });

  factory HealthStatus.fromMap(Map<String, dynamic> map) {
    return HealthStatus(
      name: map['name'].toString(),
      ping: (map['ping'] is String)
          ? int.tryParse(map['ping']) ?? 0
          : map['ping'] ?? 0,
      status: map['status'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "ping": ping,
      "status": status,
    };
  }
}
