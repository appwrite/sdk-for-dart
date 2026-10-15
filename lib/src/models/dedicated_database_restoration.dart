part of '../../models.dart';

/// Restoration
class DedicatedDatabaseRestoration implements Model {
  /// Restoration ID.
  final String $id;

  /// Restoration creation time in ISO 8601 format.
  final String $createdAt;

  /// Database ID being restored into.
  final String databaseId;

  /// Source database ID when restoring a backup into another database.
  final String? sourceDatabaseId;

  /// Project ID.
  final String projectId;

  /// Backup ID used for restoration (null for PITR).
  final String? backupId;

  /// Restoration type. Possible values: backup (restore from a specific backup snapshot), pitr (point-in-time recovery to a specific timestamp).
  final String type;

  /// Where the backup was restored. Possible values: in_place (replayed over the database that took the backup), clone (recovered onto a second workload beside the database, which keeps serving until the clone is promoted onto its endpoint), copy (recovered onto a separate database with its own endpoint).
  final String restoreMode;

  /// Restoration status. Possible values: pending (queued for processing), running (currently in progress), completed (successfully finished), failed (encountered an error).
  final String status;

  /// Target time for PITR restoration in ISO 8601 format.
  final String? targetTime;

  /// Restoration start time in ISO 8601 format.
  final String? startedAt;

  /// Restoration completion time in ISO 8601 format.
  final String? completedAt;

  /// Error message if restoration failed.
  final String error;

  DedicatedDatabaseRestoration({
    required this.$id,
    required this.$createdAt,
    required this.databaseId,
    this.sourceDatabaseId,
    required this.projectId,
    this.backupId,
    required this.type,
    required this.restoreMode,
    required this.status,
    this.targetTime,
    this.startedAt,
    this.completedAt,
    required this.error,
  });
  factory DedicatedDatabaseRestoration.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      '\$id': "",
      '\$createdAt': "",
      'databaseId': "",
      'projectId': "",
      'type': "backup",
      'restoreMode': "in_place",
      'status': "pending",
      'error': "",
      ...map,
    };

    return DedicatedDatabaseRestoration(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      databaseId: map['databaseId'].toString(),
      sourceDatabaseId: map['sourceDatabaseId']?.toString(),
      projectId: map['projectId'].toString(),
      backupId: map['backupId']?.toString(),
      type: map['type'].toString(),
      restoreMode: map['restoreMode'].toString(),
      status: map['status'].toString(),
      targetTime: map['targetTime']?.toString(),
      startedAt: map['startedAt']?.toString(),
      completedAt: map['completedAt']?.toString(),
      error: map['error'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "databaseId": databaseId,
      "sourceDatabaseId": sourceDatabaseId,
      "projectId": projectId,
      "backupId": backupId,
      "type": type,
      "restoreMode": restoreMode,
      "status": status,
      "targetTime": targetTime,
      "startedAt": startedAt,
      "completedAt": completedAt,
      "error": error,
    };
  }
}
