part of '../../models.dart';

/// Policy Deny Aliased Email
class PolicyDenyAliasedEmail implements Model {
    /// Policy ID.
    final String $id;

    /// Whether the deny aliased email policy is enabled.
    final bool enabled;

    PolicyDenyAliasedEmail({
        required this.$id,
        required this.enabled,
    });

    factory PolicyDenyAliasedEmail.fromMap(Map<String, dynamic> map) {
        return PolicyDenyAliasedEmail(
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
