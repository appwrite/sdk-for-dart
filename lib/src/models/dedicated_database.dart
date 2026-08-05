part of '../../models.dart';

/// DedicatedDatabase
class DedicatedDatabase implements Model {
  /// Dedicated database ID.
  final String $id;

  /// Database creation time in ISO 8601 format.
  final String $createdAt;

  /// Database update date in ISO 8601 format.
  final String $updatedAt;

  /// Project ID that owns this database.
  final String projectId;

  /// Database display name.
  final String name;

  /// Product API that owns this database: tablesdb, documentsdb, vectorsdb, mysql, postgresql, or mongodb.
  final String api;

  /// Database engine: postgresql, mysql, or mongodb. Null until the backing reports one.
  final String engine;

  /// Database engine version.
  final String version;

  /// Specification identifier.
  final String specification;

  /// Database backend provider. Possible values: prisma, edge.
  final String backend;

  /// Database hostname for connections.
  final String hostname;

  /// Database port for connections. Derived from the engine when the backing has not reported one yet.
  final int connectionPort;

  /// Database username for connections.
  final String connectionUser;

  /// Database password for connections.
  final String connectionPassword;

  /// Full database connection string (URI format).
  final String connectionString;

  /// Whether SSL/TLS is required for client connections.
  final bool ssl;

  /// Database status. Possible values: provisioning, ready, inactive, paused, failed, deleted, restoring, scaling.
  final String status;

  /// Container status for lifecycle-managed database runtimes: active or inactive.
  final String containerStatus;

  /// Last activity timestamp in ISO 8601 format.
  final String? lastAccessedAt;

  /// Display-only timestamp when the database is expected to be considered idle (ISO 8601 format). Derived from last activity; lifecycle transitions are driven by lifecycleState.
  final String? idleUntil;

  /// Idle-lifecycle state of the database. Possible values: active, warm, cold, hibernated.
  final String lifecycleState;

  /// Minutes of inactivity before container scales to zero.
  final int idleTimeoutMinutes;

  /// CPU allocated in millicores.
  final int cpu;

  /// Memory allocated in MB.
  final int memory;

  /// Storage allocated in GB.
  final int storage;

  /// Storage class. Currently always &#039;ssd&#039;; DigitalOcean exposes a single block-storage class.
  final String storageClass;

  /// Maximum storage allowed in GB. 0 means use system default.
  final int storageMaxGb;

  /// Kubernetes node pool where the database is scheduled.
  final String nodePool;

  /// Number of high availability replicas. High availability is enabled when greater than 0.
  final int replicas;

  /// Replication sync mode: async, sync, or quorum.
  final String syncMode;

  /// Number of cross-region replicas. Cross-region availability is enabled when greater than 0.
  final int crossRegionReplicas;

  /// Maximum concurrent client connections. This is the limit a client pool may reach; the engine&#039;s own max_connections reported by the status endpoint is a smaller backend limit the pooler multiplexes onto and does not constrain a client pool.
  final int networkMaxConnections;

  /// Connection idle timeout in seconds.
  final int networkIdleTimeoutSeconds;

  /// IP addresses/CIDR ranges allowed to connect.
  final List<String> networkIPAllowlist;

  /// Whether automatic backups are enabled.
  final bool backupEnabled;

  /// Whether point-in-time recovery is enabled.
  final bool pitr;

  /// Number of days to retain PITR data.
  final int pitrRetentionDays;

  /// Whether automatic storage expansion is enabled.
  final bool storageAutoscaling;

  /// Storage usage percentage that triggers automatic expansion.
  final int storageAutoscalingThresholdPercent;

  /// Maximum storage size in GB for autoscaling. 0 means no limit.
  final int storageAutoscalingMaxGb;

  /// Day of the week for the maintenance window. Possible values: sun, mon, tue, wed, thu, fri, sat.
  final String maintenanceWindowDay;

  /// Hour in UTC (0-23) when the maintenance window starts.
  final int maintenanceWindowHourUtc;

  /// Whether metrics collection is enabled.
  final bool metricsEnabled;

  /// Whether the SQL API sidecar is enabled for this database.
  final bool sqlApiEnabled;

  /// Statement types accepted by the SQL API. Defaults to read/write DML only; DDL/DCL types (CREATE, ALTER, DROP, TRUNCATE, GRANT, REVOKE) are opt-in per database. Allowed values: SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, DROP, TRUNCATE, GRANT, REVOKE.
  final List<String> sqlApiAllowedStatements;

  /// Maximum rows returned per SQL API execution. Results larger than this are truncated.
  final int sqlApiMaxRows;

  /// Maximum serialised SQL API result payload in bytes. Results larger than this are truncated.
  final int sqlApiMaxBytes;

  /// Maximum server-side SQL API execution time in seconds before the query is cancelled.
  final int sqlApiTimeoutSeconds;

  /// Error message if status is failed.
  final String error;

  DedicatedDatabase({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.projectId,
    required this.name,
    required this.api,
    required this.engine,
    required this.version,
    required this.specification,
    required this.backend,
    required this.hostname,
    required this.connectionPort,
    required this.connectionUser,
    required this.connectionPassword,
    required this.connectionString,
    required this.ssl,
    required this.status,
    required this.containerStatus,
    this.lastAccessedAt,
    this.idleUntil,
    required this.lifecycleState,
    required this.idleTimeoutMinutes,
    required this.cpu,
    required this.memory,
    required this.storage,
    required this.storageClass,
    required this.storageMaxGb,
    required this.nodePool,
    required this.replicas,
    required this.syncMode,
    required this.crossRegionReplicas,
    required this.networkMaxConnections,
    required this.networkIdleTimeoutSeconds,
    required this.networkIPAllowlist,
    required this.backupEnabled,
    required this.pitr,
    required this.pitrRetentionDays,
    required this.storageAutoscaling,
    required this.storageAutoscalingThresholdPercent,
    required this.storageAutoscalingMaxGb,
    required this.maintenanceWindowDay,
    required this.maintenanceWindowHourUtc,
    required this.metricsEnabled,
    required this.sqlApiEnabled,
    required this.sqlApiAllowedStatements,
    required this.sqlApiMaxRows,
    required this.sqlApiMaxBytes,
    required this.sqlApiTimeoutSeconds,
    required this.error,
  });

  factory DedicatedDatabase.fromMap(Map<String, dynamic> map) {
    return DedicatedDatabase(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      projectId: map['projectId'].toString(),
      name: map['name'].toString(),
      api: map['api'].toString(),
      engine: map['engine'].toString(),
      version: map['version'].toString(),
      specification: map['specification'].toString(),
      backend: map['backend'].toString(),
      hostname: map['hostname'].toString(),
      connectionPort: map['connectionPort'],
      connectionUser: map['connectionUser'].toString(),
      connectionPassword: map['connectionPassword'].toString(),
      connectionString: map['connectionString'].toString(),
      ssl: map['ssl'],
      status: map['status'].toString(),
      containerStatus: map['containerStatus'].toString(),
      lastAccessedAt: map['lastAccessedAt']?.toString(),
      idleUntil: map['idleUntil']?.toString(),
      lifecycleState: map['lifecycleState'].toString(),
      idleTimeoutMinutes: map['idleTimeoutMinutes'],
      cpu: map['cpu'],
      memory: map['memory'],
      storage: map['storage'],
      storageClass: map['storageClass'].toString(),
      storageMaxGb: map['storageMaxGb'],
      nodePool: map['nodePool'].toString(),
      replicas: map['replicas'],
      syncMode: map['syncMode'].toString(),
      crossRegionReplicas: map['crossRegionReplicas'],
      networkMaxConnections: map['networkMaxConnections'],
      networkIdleTimeoutSeconds: map['networkIdleTimeoutSeconds'],
      networkIPAllowlist: List.from(map['networkIPAllowlist'] ?? []),
      backupEnabled: map['backupEnabled'],
      pitr: map['pitr'],
      pitrRetentionDays: map['pitrRetentionDays'],
      storageAutoscaling: map['storageAutoscaling'],
      storageAutoscalingThresholdPercent:
          map['storageAutoscalingThresholdPercent'],
      storageAutoscalingMaxGb: map['storageAutoscalingMaxGb'],
      maintenanceWindowDay: map['maintenanceWindowDay'].toString(),
      maintenanceWindowHourUtc: map['maintenanceWindowHourUtc'],
      metricsEnabled: map['metricsEnabled'],
      sqlApiEnabled: map['sqlApiEnabled'],
      sqlApiAllowedStatements: List.from(map['sqlApiAllowedStatements'] ?? []),
      sqlApiMaxRows: map['sqlApiMaxRows'],
      sqlApiMaxBytes: map['sqlApiMaxBytes'],
      sqlApiTimeoutSeconds: map['sqlApiTimeoutSeconds'],
      error: map['error'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "projectId": projectId,
      "name": name,
      "api": api,
      "engine": engine,
      "version": version,
      "specification": specification,
      "backend": backend,
      "hostname": hostname,
      "connectionPort": connectionPort,
      "connectionUser": connectionUser,
      "connectionPassword": connectionPassword,
      "connectionString": connectionString,
      "ssl": ssl,
      "status": status,
      "containerStatus": containerStatus,
      "lastAccessedAt": lastAccessedAt,
      "idleUntil": idleUntil,
      "lifecycleState": lifecycleState,
      "idleTimeoutMinutes": idleTimeoutMinutes,
      "cpu": cpu,
      "memory": memory,
      "storage": storage,
      "storageClass": storageClass,
      "storageMaxGb": storageMaxGb,
      "nodePool": nodePool,
      "replicas": replicas,
      "syncMode": syncMode,
      "crossRegionReplicas": crossRegionReplicas,
      "networkMaxConnections": networkMaxConnections,
      "networkIdleTimeoutSeconds": networkIdleTimeoutSeconds,
      "networkIPAllowlist": networkIPAllowlist,
      "backupEnabled": backupEnabled,
      "pitr": pitr,
      "pitrRetentionDays": pitrRetentionDays,
      "storageAutoscaling": storageAutoscaling,
      "storageAutoscalingThresholdPercent": storageAutoscalingThresholdPercent,
      "storageAutoscalingMaxGb": storageAutoscalingMaxGb,
      "maintenanceWindowDay": maintenanceWindowDay,
      "maintenanceWindowHourUtc": maintenanceWindowHourUtc,
      "metricsEnabled": metricsEnabled,
      "sqlApiEnabled": sqlApiEnabled,
      "sqlApiAllowedStatements": sqlApiAllowedStatements,
      "sqlApiMaxRows": sqlApiMaxRows,
      "sqlApiMaxBytes": sqlApiMaxBytes,
      "sqlApiTimeoutSeconds": sqlApiTimeoutSeconds,
      "error": error,
    };
  }
}
