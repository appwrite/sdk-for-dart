part of '../../models.dart';

/// Policy Session Limit
class PolicySessionLimit implements Model {
  /// Policy ID.
  final String $id;

  /// Maximum number of sessions allowed per user. A value of 0 means the policy is disabled.
  final int total;

  PolicySessionLimit({
    required this.$id,
    required this.total,
  });

  factory PolicySessionLimit.fromMap(Map<String, dynamic> map) {
    return PolicySessionLimit(
      $id: map['\$id'].toString(),
      total: map['total'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "total": total,
    };
  }
}
