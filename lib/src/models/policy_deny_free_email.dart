part of '../../models.dart';

/// Policy Deny Free Email
class PolicyDenyFreeEmail implements Model {
    /// Policy ID.
    final String $id;

    /// Whether the deny free email policy is enabled.
    final bool enabled;

    PolicyDenyFreeEmail({
        required this.$id,
        required this.enabled,
    });

    factory PolicyDenyFreeEmail.fromMap(Map<String, dynamic> map) {
        return PolicyDenyFreeEmail(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
        };
    }
}
