part of '../../models.dart';

/// Status
class DatabaseStatus implements Model {
    /// Overall health status: healthy, degraded, or unhealthy.
    final String health;

    /// Whether the database is ready to accept connections.
    final bool ready;

    /// Database engine: postgresql, mysql, mariadb, or mongodb.
    final String engine;

    /// Database engine version.
    final String version;

    /// Database uptime in seconds.
    final int uptime;

    /// Connection statistics.
    final DatabaseStatusConnections connections;

    /// List of database replicas and their status.
    final List<DatabaseStatusReplica> replicas;

    /// Storage volume information.
    final List<DatabaseStatusVolume> volumes;

    DatabaseStatus({
        required this.health,
        required this.ready,
        required this.engine,
        required this.version,
        required this.uptime,
        required this.connections,
        required this.replicas,
        required this.volumes,
    });

    factory DatabaseStatus.fromMap(Map<String, dynamic> map) {
        return DatabaseStatus(
            health: map['health'].toString(),
            ready: map['ready'],
            engine: map['engine'].toString(),
            version: map['version'].toString(),
            uptime: map['uptime'],
            connections: DatabaseStatusConnections.fromMap(map['connections']),
            replicas: List<DatabaseStatusReplica>.from(map['replicas'].map((p) => DatabaseStatusReplica.fromMap(p))),
            volumes: List<DatabaseStatusVolume>.from(map['volumes'].map((p) => DatabaseStatusVolume.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "health": health,
            "ready": ready,
            "engine": engine,
            "version": version,
            "uptime": uptime,
            "connections": connections.toMap(),
            "replicas": replicas.map((p) => p.toMap()).toList(),
            "volumes": volumes.map((p) => p.toMap()).toList(),
        };
    }
}
