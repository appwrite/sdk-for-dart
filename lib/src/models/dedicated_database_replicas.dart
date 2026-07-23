part of '../../models.dart';

/// Replicas
class DedicatedDatabaseReplicas implements Model {
  /// Number of configured replicas. Zero means high availability is disabled.
  final int replicas;

  /// Replication sync mode. Possible values: async (asynchronous, fastest), sync (synchronous, strong consistency), quorum (quorum-based, majority of replicas must confirm).
  final String syncMode;

  /// Per-pod statuses for the primary and every replica.
  final List<DedicatedDatabaseMember> members;

  DedicatedDatabaseReplicas({
    required this.replicas,
    required this.syncMode,
    required this.members,
  });

  factory DedicatedDatabaseReplicas.fromMap(Map<String, dynamic> map) {
    return DedicatedDatabaseReplicas(
      replicas: map['replicas'],
      syncMode: map['syncMode'].toString(),
      members: List<DedicatedDatabaseMember>.from(
          map['members'].map((p) => DedicatedDatabaseMember.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "replicas": replicas,
      "syncMode": syncMode,
      "members": members.map((p) => p.toMap()).toList(),
    };
  }
}
