part of '../../models.dart';

/// Status
class DatabaseStatus implements Model {
    /// Overall health status: healthy, degraded, or unhealthy.
    final String health;

    /// Whether the database is ready to accept connections.
    final bool ready;

    /// Database engine: postgresql, mysql, or mongodb.
    final String engine;

    /// Database engine version.
    final String version;

    /// Database uptime in seconds.
    final int uptime;

    /// Connection statistics.
    final DatabaseStatusConnections connections;

    /// Requested replication sync mode. Possible values: async, sync, quorum. Compare with effectiveSyncMode for what the primary is enforcing.
    final String syncMode;

    /// Replication sync mode the primary is actually enforcing. Null when high availability is disabled or the state could not be read.
    final String? effectiveSyncMode;

    /// Whether the enforced replication is weaker than the requested syncMode.
    final bool syncDegraded;

    /// Number of standby acknowledgements the primary waits for before a write is committed.
    final int syncAcknowledgements;

    /// Number of standbys registered with the primary for synchronous replication.
    final int syncStandbyCount;

    /// Whether the reported sync state was read from the engine. When false the state could not be confirmed and the other sync fields carry no reading.
    final bool syncStateConfirmed;

    /// List of database replicas and their status. Every configured member appears, including one the backend has not brought up, which is reported as not healthy.
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
        required this.syncMode,
        this.effectiveSyncMode,
        required this.syncDegraded,
        required this.syncAcknowledgements,
        required this.syncStandbyCount,
        required this.syncStateConfirmed,
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
            syncMode: map['syncMode'].toString(),
            effectiveSyncMode: map['effectiveSyncMode']?.toString(),
            syncDegraded: map['syncDegraded'],
            syncAcknowledgements: map['syncAcknowledgements'],
            syncStandbyCount: map['syncStandbyCount'],
            syncStateConfirmed: map['syncStateConfirmed'],
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
            "syncMode": syncMode,
            "effectiveSyncMode": effectiveSyncMode,
            "syncDegraded": syncDegraded,
            "syncAcknowledgements": syncAcknowledgements,
            "syncStandbyCount": syncStandbyCount,
            "syncStateConfirmed": syncStateConfirmed,
            "replicas": replicas.map((p) => p.toMap()).toList(),
            "volumes": volumes.map((p) => p.toMap()).toList(),
        };
    }
}
