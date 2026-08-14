part of '../../models.dart';

/// dedicatedDatabaseLimits
class BillingPlanDedicatedDatabaseLimits implements Model {
    /// Minimum CPU allocation in millicores.
    final int? minCpu;

    /// Maximum CPU allocation in millicores.
    final int? maxCpu;

    /// Minimum memory allocation in megabytes.
    final int? minMemoryMb;

    /// Maximum memory allocation in megabytes.
    final int? maxMemoryMb;

    /// Minimum storage allocation in gigabytes.
    final int? minStorageGb;

    /// Maximum storage allocation in gigabytes.
    final int? maxStorageGb;

    /// Maximum number of high-availability replicas per dedicated database.
    final int? maxReplicas;

    /// Maximum number of client connections.
    final int? maxConnections;

    /// Maximum number of entries allowed in the IP allowlist.
    final int? maxIpAllowlistSize;

    /// Maximum number of database extensions that can be enabled.
    final int? maxExtensions;

    /// Maximum number of days a backup can be retained.
    final int? maxBackupRetentionDays;

    /// Maximum number of days of point-in-time recovery data that can be retained.
    final int? maxPitrRetentionDays;

    /// Maximum number of rows a single SQL API query can return.
    final int? maxSqlApiMaxRows;

    /// Maximum response size in bytes for a single SQL API query.
    final int? maxSqlApiMaxBytes;

    /// Maximum execution time in seconds for a single SQL API query.
    final int? maxSqlApiTimeoutSeconds;

    /// Maximum number of SQL statement types that can be permitted through the SQL API.
    final int? maxSqlApiAllowedStatements;

    /// SQL statement types permitted through the SQL API.
    final List<String>? allowedSqlStatements;

    /// Storage classes available for dedicated databases.
    final List<String>? allowedStorageClasses;

    /// Replica synchronization modes available for dedicated databases.
    final List<String>? allowedSyncModes;

    BillingPlanDedicatedDatabaseLimits({
        this.minCpu,
        this.maxCpu,
        this.minMemoryMb,
        this.maxMemoryMb,
        this.minStorageGb,
        this.maxStorageGb,
        this.maxReplicas,
        this.maxConnections,
        this.maxIpAllowlistSize,
        this.maxExtensions,
        this.maxBackupRetentionDays,
        this.maxPitrRetentionDays,
        this.maxSqlApiMaxRows,
        this.maxSqlApiMaxBytes,
        this.maxSqlApiTimeoutSeconds,
        this.maxSqlApiAllowedStatements,
        this.allowedSqlStatements,
        this.allowedStorageClasses,
        this.allowedSyncModes,
    });

    factory BillingPlanDedicatedDatabaseLimits.fromMap(Map<String, dynamic> map) {
        return BillingPlanDedicatedDatabaseLimits(
            minCpu: map['minCpu'],
            maxCpu: map['maxCpu'],
            minMemoryMb: map['minMemoryMb'],
            maxMemoryMb: map['maxMemoryMb'],
            minStorageGb: map['minStorageGb'],
            maxStorageGb: map['maxStorageGb'],
            maxReplicas: map['maxReplicas'],
            maxConnections: map['maxConnections'],
            maxIpAllowlistSize: map['maxIpAllowlistSize'],
            maxExtensions: map['maxExtensions'],
            maxBackupRetentionDays: map['maxBackupRetentionDays'],
            maxPitrRetentionDays: map['maxPitrRetentionDays'],
            maxSqlApiMaxRows: map['maxSqlApiMaxRows'],
            maxSqlApiMaxBytes: map['maxSqlApiMaxBytes'],
            maxSqlApiTimeoutSeconds: map['maxSqlApiTimeoutSeconds'],
            maxSqlApiAllowedStatements: map['maxSqlApiAllowedStatements'],
            allowedSqlStatements: List.from(map['allowedSqlStatements'] ?? []),
            allowedStorageClasses: List.from(map['allowedStorageClasses'] ?? []),
            allowedSyncModes: List.from(map['allowedSyncModes'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "minCpu": minCpu,
            "maxCpu": maxCpu,
            "minMemoryMb": minMemoryMb,
            "maxMemoryMb": maxMemoryMb,
            "minStorageGb": minStorageGb,
            "maxStorageGb": maxStorageGb,
            "maxReplicas": maxReplicas,
            "maxConnections": maxConnections,
            "maxIpAllowlistSize": maxIpAllowlistSize,
            "maxExtensions": maxExtensions,
            "maxBackupRetentionDays": maxBackupRetentionDays,
            "maxPitrRetentionDays": maxPitrRetentionDays,
            "maxSqlApiMaxRows": maxSqlApiMaxRows,
            "maxSqlApiMaxBytes": maxSqlApiMaxBytes,
            "maxSqlApiTimeoutSeconds": maxSqlApiTimeoutSeconds,
            "maxSqlApiAllowedStatements": maxSqlApiAllowedStatements,
            "allowedSqlStatements": allowedSqlStatements,
            "allowedStorageClasses": allowedStorageClasses,
            "allowedSyncModes": allowedSyncModes,
        };
    }
}
