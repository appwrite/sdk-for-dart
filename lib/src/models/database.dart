part of '../../models.dart';

/// Database
class Database implements Model {
    /// Database ID.
    final String $id;

    /// Database name.
    final String name;

    /// Database creation date in ISO 8601 format.
    final String $createdAt;

    /// Database update date in ISO 8601 format.
    final String $updatedAt;

    /// If database is enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the database is inaccessible to users, but remains accessible to Server SDKs using API keys.
    final bool enabled;

    /// Database type.
    final enums.DatabaseType type;

    /// Dedicated database lifecycle status. Null when the database has no valid dedicated backing.
    final enums.DatabaseStatus? status;

    /// Underlying engine of the dedicated backing: postgresql, mysql, or mongodb. A managed product (tablesdb, documentsdb, vectorsdb) reports the engine it runs on, so its type and engine can differ. Null when the database has no dedicated backing.
    final String? engine;

    /// Compute specification identifier of the dedicated backing, e.g. s-2vcpu-2gb. Null when the database has no dedicated backing.
    final String? specification;

    /// Number of secondary high availability replicas, excluding the primary. Null when backing configuration is unavailable.
    final int? replicas;

    /// Database backup policies.
    final List<BackupPolicy>? policies;

    /// Database backup archives.
    final List<BackupArchive>? archives;

    Database({
        required this.$id,
        required this.name,
        required this.$createdAt,
        required this.$updatedAt,
        required this.enabled,
        required this.type,
        this.status,
        this.engine,
        this.specification,
        this.replicas,
        this.policies,
        this.archives,
    });

    factory Database.fromMap(Map<String, dynamic> map) {
        return Database(
            $id: map['\$id'].toString(),
            name: map['name'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            enabled: map['enabled'],
            type: enums.DatabaseType.values.firstWhere((e) => e.value == map['type']),
            status: map['status'] != null ? enums.DatabaseStatus.values.firstWhere((e) => e.value == map['status']) : null,
            engine: map['engine']?.toString(),
            specification: map['specification']?.toString(),
            replicas: map['replicas'],
            policies: map['policies'] != null ? List<BackupPolicy>.from(map['policies'].map((p) => BackupPolicy.fromMap(p))) : null,
            archives: map['archives'] != null ? List<BackupArchive>.from(map['archives'].map((p) => BackupArchive.fromMap(p))) : null,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "enabled": enabled,
            "type": type.value,
            "status": status?.value,
            "engine": engine,
            "specification": specification,
            "replicas": replicas,
            "policies": policies?.map((p) => p.toMap()).toList(),
            "archives": archives?.map((p) => p.toMap()).toList(),
        };
    }
}
