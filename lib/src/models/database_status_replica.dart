part of '../../models.dart';

/// Replica
class DatabaseStatusReplica implements Model {
    /// StatefulSet pod index (0 = primary, 1+ = replicas).
    final int index;

    /// Replica role: primary or replica.
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
