part of '../../models.dart';

/// Policy Password History
class PolicyPasswordHistory implements Model {
  /// Policy ID.
  final String $id;

  /// Password history length. A value of 0 means the policy is disabled.
  final int total;

  PolicyPasswordHistory({
    required this.$id,
    required this.total,
  });

  factory PolicyPasswordHistory.fromMap(Map<String, dynamic> map) {
    return PolicyPasswordHistory(
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
