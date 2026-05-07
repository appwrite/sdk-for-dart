part of '../../models.dart';

/// Policy Session Alert
class PolicySessionAlert implements Model {
    /// Policy ID.
    final String $id;

    /// Whether session alert policy is enabled.
    final bool enabled;

    PolicySessionAlert({
        required this.$id,
        required this.enabled,
    });

    factory PolicySessionAlert.fromMap(Map<String, dynamic> map) {
        return PolicySessionAlert(
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
