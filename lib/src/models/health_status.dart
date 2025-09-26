part of '../../models.dart';

/// Health Status
class HealthStatus implements Model {
  /// Name of the service.
  final String name;

  /// Duration in milliseconds how long the health check took.
  final int ping;

  /// Service status. Possible values are: `pass`, `fail`
  final enums.HealthCheckStatus status;

  HealthStatus({required this.name, required this.ping, required this.status});

  factory HealthStatus.fromMap(Map<String, dynamic> map) {
    return HealthStatus(
      name: map['name'].toString(),
      ping: map['ping'],
      status: enums.HealthCheckStatus.values.firstWhere(
        (e) => e.value == map['status'],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {"name": name, "ping": ping, "status": status.value};
  }
}
