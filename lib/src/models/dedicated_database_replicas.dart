part of '../../models.dart';

/// Replicas
class DedicatedDatabaseReplicas implements Model {
    /// Number of configured replicas. Zero means high availability is disabled.
    final int replicas;

    /// Requested replication sync mode. Possible values: async (asynchronous, fastest), sync (synchronous, strong consistency), quorum (quorum-based, majority of replicas must confirm). This is what was asked for; compare it with effectiveSyncMode for what the primary is enforcing.
    final String syncMode;

    /// Replication sync mode the primary is actually enforcing. Null when high availability is disabled or the state could not be read. A value below the requested syncMode means writes are being acknowledged with weaker durability than configured.
    final String? effectiveSyncMode;

    /// Whether the enforced replication is weaker than the requested syncMode.
    final bool syncDegraded;

    /// Number of standby acknowledgements the primary waits for before a write is committed. Zero means writes are acknowledged locally.
    final int syncAcknowledgements;

    /// Number of standbys registered with the primary for synchronous replication.
    final int syncStandbyCount;

    /// Whether the other sync fields are an engine reading rather than a recorded estimate. True when the primary answered what it is enforcing, including when that answer contradicted the record, in which case the contradicted values are replaced by the ones the engine reports. False when the reading could not be taken: the probe did not answer, there was no engine to ask, or the values describe a configuration change just applied rather than anything measured. Absent when no engine was asked at all, so an unprobed database is distinguishable from an unconfirmed one. False never means a standby was found lagging, because it is the absence of a reading rather than a negative one, so draw no conclusion about replication health from it or from a response that omits it.
    final bool? syncStateConfirmed;

    /// Per-pod statuses for the primary and every replica.
    final List<DedicatedDatabaseMember> members;

    DedicatedDatabaseReplicas({
        required this.replicas,
        required this.syncMode,
        this.effectiveSyncMode,
        required this.syncDegraded,
        required this.syncAcknowledgements,
        required this.syncStandbyCount,
        this.syncStateConfirmed,
        required this.members,
    });

    factory DedicatedDatabaseReplicas.fromMap(Map<String, dynamic> map) {
        return DedicatedDatabaseReplicas(
            replicas: map['replicas'],
            syncMode: map['syncMode'].toString(),
            effectiveSyncMode: map['effectiveSyncMode']?.toString(),
            syncDegraded: map['syncDegraded'],
            syncAcknowledgements: map['syncAcknowledgements'],
            syncStandbyCount: map['syncStandbyCount'],
            syncStateConfirmed: map['syncStateConfirmed'],
            members: List<DedicatedDatabaseMember>.from(map['members'].map((p) => DedicatedDatabaseMember.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "replicas": replicas,
            "syncMode": syncMode,
            "effectiveSyncMode": effectiveSyncMode,
            "syncDegraded": syncDegraded,
            "syncAcknowledgements": syncAcknowledgements,
            "syncStandbyCount": syncStandbyCount,
            "syncStateConfirmed": syncStateConfirmed,
            "members": members.map((p) => p.toMap()).toList(),
        };
    }
}
