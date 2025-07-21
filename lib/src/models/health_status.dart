part of '../../models.dart';

/// Health Status
class HealthStatus<T> implements Model {
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

    factory HealthStatus.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return HealthStatus(
            name: 
map['name'].toString(),
            ping: 
map['ping'],
            status: 
map['status'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "ping": ping,
            "status": status,
        };
    }

    // Public getters for private underscore fields
}
