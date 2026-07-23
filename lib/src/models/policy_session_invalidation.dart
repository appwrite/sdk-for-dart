part of '../../models.dart';

/// Policy Session Invalidation
class PolicySessionInvalidation implements Model {
    /// Policy ID.
    final String $id;

    /// Whether session invalidation policy is enabled.
    final bool enabled;

    PolicySessionInvalidation({
        required this.$id,
        required this.enabled,
    });

    factory PolicySessionInvalidation.fromMap(Map<String, dynamic> map) {
        return PolicySessionInvalidation(
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
