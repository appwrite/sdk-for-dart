part of '../../models.dart';

/// Backup policy list
class BackupPolicyList implements Model {
  /// Total number of policies that matched your query.
  final int total;

  /// List of policies.
  final List<BackupPolicy> policies;

  BackupPolicyList({
    required this.total,
    required this.policies,
  });

  factory BackupPolicyList.fromMap(Map<String, dynamic> map) {
    return BackupPolicyList(
      total: map['total'],
      policies: List<BackupPolicy>.from(
          map['policies'].map((p) => BackupPolicy.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "policies": policies.map((p) => p.toMap()).toList(),
    };
  }
}
