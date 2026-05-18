part of '../../models.dart';

/// ProjectService
class ProjectService implements Model {
    /// Service ID.
    final enums.ProjectServiceId $id;

    /// Service status.
    final bool enabled;

    ProjectService({
        required this.$id,
        required this.enabled,
    });

    factory ProjectService.fromMap(Map<String, dynamic> map) {
        return ProjectService(
            $id: enums.ProjectServiceId.values.firstWhere((e) => e.value == map['\$id']),
            enabled: map['enabled'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id.value,
            "enabled": enabled,
        };
    }
}
