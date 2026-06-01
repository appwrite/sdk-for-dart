part of '../../models.dart';

/// Policy User Limit
class PolicyUserLimit implements Model {
    /// Policy ID.
    final String $id;

    /// Maximum number of users allowed in the project. A value of 0 means the policy is disabled.
    final int total;

    PolicyUserLimit({
        required this.$id,
        required this.total,
    });

    factory PolicyUserLimit.fromMap(Map<String, dynamic> map) {
        return PolicyUserLimit(
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
