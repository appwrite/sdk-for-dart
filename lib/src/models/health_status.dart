part of dart_appwrite.models;

/// Health Status
class HealthStatus implements Model {
    /// Duration in milliseconds how long the health check took.
    final int ping;
    /// Service status. Possible values can are: `pass`, `fail`
    final String status;

    HealthStatus({        required this.ping,
        required this.status,
    });

    factory HealthStatus.fromMap(Map<String, dynamic> map) {
        return HealthStatus(
            ping: map['ping'],
            status: map['status'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "ping": ping,
            "status": status,
        };
    }
}
