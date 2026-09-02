part of '../dart_appwrite.dart';

class Mongo extends Service {
  Mongo(super.client);

  /// List all dedicated databases. Results support pagination.
  Future<models.DedicatedDatabaseList> list({
    List<String>? queries,
  }) async {
    final String apiPath = '/mongo';

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseList.fromMap(res.data);
  }

  /// Create a new dedicated database with the chosen engine and configuration.
  /// Status will be 'provisioning' until the database is ready.
  Future<models.DedicatedDatabase> create({
    required String databaseId,
    required String name,
    String? version,
    String? specification,
    int? replicas,
    String? syncMode,
    int? networkIdleTimeoutSeconds,
    List<String>? networkIPAllowlist,
    int? idleTimeoutMinutes,
    bool? pitr,
    int? pitrRetentionDays,
    bool? storageAutoscaling,
    int? storageAutoscalingThresholdPercent,
    int? storageAutoscalingMaxGb,
  }) async {
    final String apiPath = '/mongo';

    final Map<String, dynamic> apiParams = {
      'databaseId': databaseId,
      'name': name,
      if (version != null) 'version': version,
      if (specification != null) 'specification': specification,
      if (replicas != null) 'replicas': replicas,
      if (syncMode != null) 'syncMode': syncMode,
      if (networkIdleTimeoutSeconds != null)
        'networkIdleTimeoutSeconds': networkIdleTimeoutSeconds,
      if (networkIPAllowlist != null) 'networkIPAllowlist': networkIPAllowlist,
      if (idleTimeoutMinutes != null) 'idleTimeoutMinutes': idleTimeoutMinutes,
      if (pitr != null) 'pitr': pitr,
      if (pitrRetentionDays != null) 'pitrRetentionDays': pitrRetentionDays,
      if (storageAutoscaling != null) 'storageAutoscaling': storageAutoscaling,
      if (storageAutoscalingThresholdPercent != null)
        'storageAutoscalingThresholdPercent':
            storageAutoscalingThresholdPercent,
      if (storageAutoscalingMaxGb != null)
        'storageAutoscalingMaxGb': storageAutoscalingMaxGb,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// List the dedicated database specifications available on the current plan.
  /// Each specification reports its resource limits, pricing, and whether it is
  /// enabled for the organization.
  Future<models.DedicatedDatabaseSpecificationList> listSpecifications() async {
    final String apiPath = '/mongo/specifications';

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseSpecificationList.fromMap(res.data);
  }

  /// Get a dedicated database by its unique ID. Returns the database
  /// configuration and current status.
  Future<models.DedicatedDatabase> get({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Update a dedicated database configuration. All changes are applied with
  /// zero downtime. Specification changes (cpu, memory, storage) are handled via
  /// rolling cutover. Storage expansion is done online. All other settings are
  /// applied in-place.
  Future<models.DedicatedDatabase> update({
    required String databaseId,
    String? name,
    String? status,
    String? specification,
    int? replicas,
    String? syncMode,
    int? networkIdleTimeoutSeconds,
    List<String>? networkIPAllowlist,
    int? idleTimeoutMinutes,
    bool? pitr,
    int? pitrRetentionDays,
    bool? storageAutoscaling,
    int? storageAutoscalingThresholdPercent,
    int? storageAutoscalingMaxGb,
    double? metricsTraceSampleRate,
    int? metricsSlowQueryLogThresholdMs,
    bool? sqlApiEnabled,
    List<String>? sqlApiAllowedStatements,
    int? sqlApiMaxRows,
    int? sqlApiMaxBytes,
    int? sqlApiTimeoutSeconds,
  }) async {
    final String apiPath = '/mongo/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (specification != null) 'specification': specification,
      if (replicas != null) 'replicas': replicas,
      if (syncMode != null) 'syncMode': syncMode,
      if (networkIdleTimeoutSeconds != null)
        'networkIdleTimeoutSeconds': networkIdleTimeoutSeconds,
      if (networkIPAllowlist != null) 'networkIPAllowlist': networkIPAllowlist,
      if (idleTimeoutMinutes != null) 'idleTimeoutMinutes': idleTimeoutMinutes,
      if (pitr != null) 'pitr': pitr,
      if (pitrRetentionDays != null) 'pitrRetentionDays': pitrRetentionDays,
      if (storageAutoscaling != null) 'storageAutoscaling': storageAutoscaling,
      if (storageAutoscalingThresholdPercent != null)
        'storageAutoscalingThresholdPercent':
            storageAutoscalingThresholdPercent,
      if (storageAutoscalingMaxGb != null)
        'storageAutoscalingMaxGb': storageAutoscalingMaxGb,
      if (metricsTraceSampleRate != null)
        'metricsTraceSampleRate': metricsTraceSampleRate,
      if (metricsSlowQueryLogThresholdMs != null)
        'metricsSlowQueryLogThresholdMs': metricsSlowQueryLogThresholdMs,
      if (sqlApiEnabled != null) 'sqlApiEnabled': sqlApiEnabled,
      if (sqlApiAllowedStatements != null)
        'sqlApiAllowedStatements': sqlApiAllowedStatements,
      if (sqlApiMaxRows != null) 'sqlApiMaxRows': sqlApiMaxRows,
      if (sqlApiMaxBytes != null) 'sqlApiMaxBytes': sqlApiMaxBytes,
      if (sqlApiTimeoutSeconds != null)
        'sqlApiTimeoutSeconds': sqlApiTimeoutSeconds,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Delete a dedicated database. This action is irreversible. The database
  /// status will be set to 'deleting' and all resources will be cleaned up.
  /// Deletion is allowed from any state, and repeating the call re-dispatches
  /// the cleanup.
  Future delete({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// List all backups for a dedicated database. Results can be filtered by
  /// status and type.
  Future<models.DedicatedDatabaseBackupList> listBackups({
    required String databaseId,
    List<String>? queries,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseBackupList.fromMap(res.data);
  }

  /// Create a manual backup of a dedicated database. The backup will be created
  /// asynchronously and its status can be checked via the get backup endpoint.
  Future<models.DedicatedDatabaseBackup> createBackup({
    required String databaseId,
    String? type,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (type != null) 'type': type,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseBackup.fromMap(res.data);
  }

  /// List scheduled backup policies for a dedicated database.
  Future<models.BackupPolicyList> listBackupPolicies({
    required String databaseId,
    List<String>? queries,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/policies'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (queries != null) 'queries': queries,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.BackupPolicyList.fromMap(res.data);
  }

  /// Create a scheduled backup policy for a dedicated database.
  Future<models.BackupPolicy> createBackupPolicy({
    required String databaseId,
    required String policyId,
    required String name,
    required String schedule,
    required int retention,
    String? type,
    bool? enabled,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/policies'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'policyId': policyId,
      'name': name,
      'schedule': schedule,
      'retention': retention,
      if (type != null) 'type': type,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.BackupPolicy.fromMap(res.data);
  }

  /// Get a scheduled backup policy for a dedicated database.
  Future<models.BackupPolicy> getBackupPolicy({
    required String databaseId,
    required String policyId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/policies/{policyId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{policyId}',
          policyId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.BackupPolicy.fromMap(res.data);
  }

  /// Update a scheduled backup policy for a dedicated database.
  Future<models.BackupPolicy> updateBackupPolicy({
    required String databaseId,
    required String policyId,
    String? name,
    String? schedule,
    int? retention,
    bool? enabled,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/policies/{policyId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{policyId}',
          policyId,
        );

    final Map<String, dynamic> apiParams = {
      if (name != null) 'name': name,
      if (schedule != null) 'schedule': schedule,
      if (retention != null) 'retention': retention,
      if (enabled != null) 'enabled': enabled,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.BackupPolicy.fromMap(res.data);
  }

  /// Delete a scheduled backup policy for a dedicated database. Backups already
  /// taken by the policy are kept until their retention expires.
  Future deleteBackupPolicy({
    required String databaseId,
    required String policyId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/policies/{policyId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{policyId}',
          policyId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// Configure off-cluster backup storage for a dedicated database. Supports S3,
  /// GCS, and Azure Blob Storage destinations. Backups will be stored to the
  /// configured destination in addition to on-cluster storage.
  Future<models.DedicatedDatabaseBackupStorage> updateBackupStorage({
    required String databaseId,
    required String provider,
    required String bucket,
    required String accessKey,
    required String secretKey,
    String? region,
    String? prefix,
    String? endpoint,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/storage'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'provider': provider,
      'bucket': bucket,
      if (region != null) 'region': region,
      if (prefix != null) 'prefix': prefix,
      if (endpoint != null) 'endpoint': endpoint,
      'accessKey': accessKey,
      'secretKey': secretKey,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.put,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseBackupStorage.fromMap(res.data);
  }

  /// Get details of a specific database backup including its status, size, and
  /// timestamps.
  Future<models.DedicatedDatabaseBackup> getBackup({
    required String databaseId,
    required String backupId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/{backupId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{backupId}',
          backupId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseBackup.fromMap(res.data);
  }

  /// Delete a database backup. This will permanently remove the backup from
  /// storage and cannot be undone.
  Future deleteBackup({
    required String databaseId,
    required String backupId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/backups/{backupId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{backupId}',
          backupId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return res.data;
  }

  /// List all ephemeral branches for a dedicated database. Returns branch
  /// metadata including ID, name, namespace, and expiration time.
  Future<models.DedicatedDatabaseBranchList> listBranches({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/branches'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseBranchList.fromMap(res.data);
  }

  /// Create an ephemeral database branch from the primary via PVC snapshot. The
  /// branch is a full copy of the database at the current point in time, useful
  /// for testing schema migrations or running experiments without affecting
  /// production data. Branches expire after the configured TTL (default 24
  /// hours). The branch is created asynchronously.
  Future<models.DedicatedDatabase> createBranch({
    required String databaseId,
    String? branchId,
    int? ttl,
  }) async {
    final String apiPath = '/mongo/{databaseId}/branches'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (branchId != null) 'branchId': branchId,
      if (ttl != null) 'ttl': ttl,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Delete an ephemeral database branch. This removes the branch namespace, its
  /// PVC, and the associated VolumeSnapshot. The deletion runs asynchronously
  /// and is irreversible.
  Future<models.DedicatedDatabase> deleteBranch({
    required String databaseId,
    required String branchId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/branches/{branchId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{branchId}',
          branchId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.delete,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Queue a rotation of the primary connection credentials for a dedicated
  /// database. A hibernated database is woken by the worker before rotation.
  /// List database operations until the returned operation reaches a terminal
  /// status, then fetch the database again for the refreshed connection string.
  Future<models.DedicatedDatabaseOperation> updateCredentials({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/credentials'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseOperation.fromMap(res.data);
  }

  /// Trigger a manual failover for a dedicated database with high availability
  /// enabled. Promotes a replica to primary. The failover runs asynchronously;
  /// poll the database document for status updates. A database left
  /// mid-operation also accepts this call as a repair once nothing is driving
  /// the operation it is stuck in. Repairing a failover that did not finish, a
  /// `failed` database, a stranded upgrade or migrate, or a stranded compute
  /// resize additionally requires `targetReplicaId` to name the member to
  /// promote, because the default target may be the member that operation
  /// already promoted.
  Future<models.DedicatedDatabase> createFailover({
    required String databaseId,
    String? targetReplicaId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/failovers'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (targetReplicaId != null) 'targetReplicaId': targetReplicaId,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Update the maintenance window for a dedicated database. Maintenance
  /// operations like minor version upgrades will be performed during this
  /// window.
  Future<models.DedicatedDatabase> updateMaintenance({
    required String databaseId,
    required String day,
    required int hourUtc,
  }) async {
    final String apiPath = '/mongo/{databaseId}/maintenance'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'day': day,
      'hourUtc': hourUtc,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.patch,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// Migrate a database between shared and dedicated types. Shared to dedicated
  /// provisions an always-on dedicated instance; dedicated to shared converts to
  /// a serverless instance that scales to zero when idle. Data is copied to the
  /// target with a brief read-only window during cutover.
  Future<models.DedicatedDatabase> createMigration({
    required String databaseId,
    required String targetType,
    String? specification,
  }) async {
    final String apiPath = '/mongo/{databaseId}/migrations'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'targetType': targetType,
      if (specification != null) 'specification': specification,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }

  /// List the lifecycle operations recorded for a dedicated database, newest
  /// first. Every provision, update, restore, backup and replication action is
  /// recorded here with its outcome, including an attempt that was abandoned
  /// because another worker took over the database.
  Future<models.DedicatedDatabaseOperationList> listOperations({
    required String databaseId,
    String? status,
    int? limit,
    int? offset,
  }) async {
    final String apiPath = '/mongo/{databaseId}/operations'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (status != null) 'status': status,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseOperationList.fromMap(res.data);
  }

  /// Get available point-in-time recovery windows for a dedicated database.
  /// Returns the earliest and latest recovery points.
  Future<models.DedicatedDatabasePITRWindows> getPitr({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/pitr'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabasePITRWindows.fromMap(res.data);
  }

  /// Get high availability status for a dedicated database. Returns replica
  /// statuses, replication lag, and sync mode.
  Future<models.DedicatedDatabaseReplicas> getReplicas({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/replicas'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseReplicas.fromMap(res.data);
  }

  /// List all restorations for a dedicated database. Results can be filtered by
  /// status and type.
  Future<models.DedicatedDatabaseRestorationList> listRestorations({
    required String databaseId,
    String? status,
    String? type,
    int? limit,
    int? offset,
  }) async {
    final String apiPath = '/mongo/{databaseId}/restorations'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (status != null) 'status': status,
      if (type != null) 'type': type,
      if (limit != null) 'limit': limit,
      if (offset != null) 'offset': offset,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseRestorationList.fromMap(res.data);
  }

  /// Restore a database from a backup or to a specific point in time (PITR). For
  /// backup restoration, provide a backupId. For PITR, provide a targetTime as
  /// an ISO 8601 datetime. PITR requires the database to have PITR enabled and
  /// is only available for enterprise databases.
  Future<models.DedicatedDatabaseRestoration> createRestoration({
    required String databaseId,
    String? type,
    String? backupId,
    String? targetDatabaseId,
    String? targetTime,
  }) async {
    final String apiPath = '/mongo/{databaseId}/restorations'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      if (type != null) 'type': type,
      if (backupId != null) 'backupId': backupId,
      if (targetDatabaseId != null) 'targetDatabaseId': targetDatabaseId,
      if (targetTime != null) 'targetTime': targetTime,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseRestoration.fromMap(res.data);
  }

  /// Get details of a specific database restoration including its status, type,
  /// and timestamps.
  Future<models.DedicatedDatabaseRestoration> getRestoration({
    required String databaseId,
    required String restorationId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/restorations/{restorationId}'
        .replaceAll(
          '{databaseId}',
          databaseId,
        )
        .replaceAll(
          '{restorationId}',
          restorationId,
        );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabaseRestoration.fromMap(res.data);
  }

  /// Get real-time health and status information for a dedicated database.
  /// Returns health status, readiness, uptime, connection info, replica status,
  /// and volume information.
  Future<models.DatabaseStatus> getStatus({
    required String databaseId,
  }) async {
    final String apiPath = '/mongo/{databaseId}/status'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {};

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.get,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DatabaseStatus.fromMap(res.data);
  }

  /// Upgrade a dedicated database to a new engine version. Uses blue-green
  /// deployment for zero-downtime cutover.
  Future<models.DedicatedDatabase> createUpgrade({
    required String databaseId,
    required String targetVersion,
  }) async {
    final String apiPath = '/mongo/{databaseId}/upgrades'.replaceAll(
      '{databaseId}',
      databaseId,
    );

    final Map<String, dynamic> apiParams = {
      'targetVersion': targetVersion,
    };

    final Map<String, String> apiHeaders = {
      'X-Appwrite-Project': client.config['project'] ?? '',
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final res = await client.call(
      HttpMethod.post,
      path: apiPath,
      params: apiParams,
      headers: apiHeaders,
    );

    return models.DedicatedDatabase.fromMap(res.data);
  }
}
