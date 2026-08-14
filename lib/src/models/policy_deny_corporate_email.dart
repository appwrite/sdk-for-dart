part of '../../models.dart';

/// Policy Deny Corporate Email
class PolicyDenyCorporateEmail implements Model {
    /// Policy ID.
    final String $id;

    /// Whether the deny non-corporate email policy is enabled.
    final bool enabled;

    PolicyDenyCorporateEmail({
        required this.$id,
        required this.enabled,
    });

    factory PolicyDenyCorporateEmail.fromMap(Map<String, dynamic> map) {
        return PolicyDenyCorporateEmail(
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
