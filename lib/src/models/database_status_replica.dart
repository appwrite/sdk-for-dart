part of '../../models.dart';

/// Replica
class DatabaseStatusReplica implements Model {
  /// Member index within the database. Read `role` for which member accepts writes: a failover moves the primary without renumbering the indexes.
  final int index;

  /// Member role. Possible values: primary (accepts reads and writes), replica (read-only follower), unknown (placement not established; reported while a transition is moving or restarting the topology, so no member can be named the write target).
  final String role;

  /// Whether the replica is healthy.
  final bool healthy;

  /// Whether the engine reports this member&#039;s replication stream as up. Null when no reading was taken: a primary has no stream to report, and a member that is not healthy, or whose probe did not answer, has none yet. `healthy` is a reachability probe of the member itself and says nothing about replication, so a healthy member may still not be replicating.
  final bool? replicating;

  /// Replication lag in seconds (null for primary). Also null against `replicating: true`, for a member that is streaming but whose engine printed no numeric lag.
  final double? lagSeconds;

  DatabaseStatusReplica({
    required this.index,
    required this.role,
    required this.healthy,
    this.replicating,
    this.lagSeconds,
  });
  factory DatabaseStatusReplica.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseStatusReplica(
      index: map['index'],
      role: map['role'].toString(),
      healthy: map['healthy'],
      replicating: map['replicating'],
      lagSeconds: map['lagSeconds']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "index": index,
      "role": role,
      "healthy": healthy,
      "replicating": replicating,
      "lagSeconds": lagSeconds,
    };
  }
}
