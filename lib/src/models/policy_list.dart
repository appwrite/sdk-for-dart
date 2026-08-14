part of '../../models.dart';

/// Policies List
class PolicyList implements Model {
    /// Total number of policies in the given project.
    final int total;

    /// List of policies.
    final List policies;

    PolicyList({
        required this.total,
        required this.policies,
    });

    factory PolicyList.fromMap(Map<String, dynamic> map) {
        return PolicyList(
            total: map['total'],
            policies: List.from(map['policies'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "policies": policies,
        };
    }
}
