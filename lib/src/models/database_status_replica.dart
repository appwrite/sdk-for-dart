part of '../../models.dart';

/// Replica
class DatabaseStatusReplica implements Model {
  /// Member index within the database. Read `role` for which member accepts writes: a failover moves the primary without renumbering the indexes.
  final int index;

  /// Member role. Possible values: primary (accepts reads and writes), replica (read-only follower), unknown (placement not established; reported while a transition is moving or restarting the topology, so no member can be named the write target).
  final String role;

  /// Whether the replica is healthy.
  final bool healthy;

  /// Replication lag in seconds (null for primary).
  final double? lagSeconds;

  DatabaseStatusReplica({
    required this.index,
    required this.role,
    required this.healthy,
    this.lagSeconds,
  });

  factory DatabaseStatusReplica.fromMap(Map<String, dynamic> map) {
    return DatabaseStatusReplica(
      index: map['index'],
      role: map['role'].toString(),
      healthy: map['healthy'],
      lagSeconds: map['lagSeconds']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "index": index,
      "role": role,
      "healthy": healthy,
      "lagSeconds": lagSeconds,
    };
  }
}
