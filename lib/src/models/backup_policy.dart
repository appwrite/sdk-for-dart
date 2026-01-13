part of '../../models.dart';

/// backup
class BackupPolicy implements Model {
    /// Backup policy ID.
    final String $id;

    /// Backup policy name.
    final String name;

    /// Policy creation date in ISO 8601 format.
    final String $createdAt;

    /// Policy update date in ISO 8601 format.
    final String $updatedAt;

    /// The services that are backed up by this policy.
    final List<String> services;

    /// The resources that are backed up by this policy.
    final List<String> resources;

    /// The resource ID to backup. Set only if this policy should backup a single resource.
    final String? resourceId;

    /// The resource type to backup. Set only if this policy should backup a single resource.
    final String? resourceType;

    /// How many days to keep the backup before it will be automatically deleted.
    final int retention;

    /// Policy backup schedule in CRON format.
    final String schedule;

    /// Is this policy enabled.
    final bool enabled;

    BackupPolicy({
        required this.$id,
        required this.name,
        required this.$createdAt,
        required this.$updatedAt,
        required this.services,
        required this.resources,
        this.resourceId,
        this.resourceType,
        required this.retention,
        required this.schedule,
        required this.enabled,
    });

    factory BackupPolicy.fromMap(Map<String, dynamic> map) {
        return BackupPolicy(
            $id: map['\$id'].toString(),
            name: map['name'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            services: List.from(map['services'] ?? []),
            resources: List.from(map['resources'] ?? []),
            resourceId: map['resourceId']?.toString(),
            resourceType: map['resourceType']?.toString(),
            retention: map['retention'],
            schedule: map['schedule'].toString(),
            enabled: map['enabled'],
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "services": services,
            "resources": resources,
            "resourceId": resourceId,
            "resourceType": resourceType,
            "retention": retention,
            "schedule": schedule,
            "enabled": enabled,
        };
    }
}
