part of '../../models.dart';

/// Member
class DedicatedDatabaseMember implements Model {
  /// Member identifier.
  final String $id;

  /// Member role. Possible values: primary (accepts reads and writes), replica (read-only follower), unknown (placement not established; reported while a transition is moving or restarting the topology and this member has not been probed, so no member can be named the write target).
  final String role;

  /// Member pod status. Possible values: pending (configured but absent from the backend topology, so nothing is bringing it up), provisioning (pod missing or Pending), starting (Running but not Ready), active (Running and Ready), failed (Failed phase or CrashLoopBackOff container), or the lowercased pod phase reported by the cluster.
  final String status;

  /// Replication lag in seconds. Null when the lag is not known: a primary has none to report, and a member the backend has not probed has none yet.
  final double? lagSeconds;

  DedicatedDatabaseMember({
    required this.$id,
    required this.role,
    required this.status,
    this.lagSeconds,
  });

  factory DedicatedDatabaseMember.fromMap(Map<String, dynamic> map) {
    return DedicatedDatabaseMember(
      $id: map['\$id'].toString(),
      role: map['role'].toString(),
      status: map['status'].toString(),
      lagSeconds: map['lagSeconds']?.toDouble(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "role": role,
      "status": status,
      "lagSeconds": lagSeconds,
    };
  }
}
