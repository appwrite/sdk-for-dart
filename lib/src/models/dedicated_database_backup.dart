part of '../../models.dart';

/// Backup
class DedicatedDatabaseBackup implements Model {
  /// Backup ID.
  final String $id;

  /// Backup creation time in ISO 8601 format.
  final String $createdAt;

  /// Database ID this backup belongs to.
  final String databaseId;

  /// Project ID.
  final String projectId;

  /// Backup policy ID when the backup was created by a schedule.
  final String policyId;

  /// Backup trigger. Possible values: manual, schedule.
  final String trigger;

  /// Backup type. Possible values: full (complete database snapshot), incremental (changes since last backup), wal (write-ahead log continuous archival).
  final String type;

  /// Backup type that was requested. Differs from `type` when the backend could not run the requested type and took a different one instead, in which case `fallbackReason` explains why. Empty for backups taken before the requested type was recorded.
  final String requestedType;

  /// Why the backend ran a different backup type than the one requested. Empty when the backup ran as requested.
  final String fallbackReason;

  /// Backup status. Possible values: pending (queued for processing), running (currently in progress), completed (successfully finished), failed (encountered an error), verified (integrity check passed).
  final String status;

  /// Backup size in bytes.
  final int sizeBytes;

  /// Backup start time in ISO 8601 format.
  final String? startedAt;

  /// Backup completion time in ISO 8601 format.
  final String? completedAt;

  /// Backup verification time in ISO 8601 format.
  final String? verifiedAt;

  /// Backup expiration time in ISO 8601 format.
  final String? expiresAt;

  /// Transaction-log position the backup anchors at, in the engine&#039;s own notation: PostgreSQL `{walSegment}|{lsn}`, MySQL and MariaDB `{binlogFile}|{offset}`, MongoDB `{seconds}|{increment}`. Empty when the backup recorded no position, which is the case for backup types that carry none.
  final String? logPosition;

  /// Error message if backup failed.
  final String error;

  DedicatedDatabaseBackup({
    required this.$id,
    required this.$createdAt,
    required this.databaseId,
    required this.projectId,
    required this.policyId,
    required this.trigger,
    required this.type,
    required this.requestedType,
    required this.fallbackReason,
    required this.status,
    required this.sizeBytes,
    this.startedAt,
    this.completedAt,
    this.verifiedAt,
    this.expiresAt,
    this.logPosition,
    required this.error,
  });
  factory DedicatedDatabaseBackup.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseBackup(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      databaseId: map['databaseId'].toString(),
      projectId: map['projectId'].toString(),
      policyId: map['policyId'].toString(),
      trigger: map['trigger'].toString(),
      type: map['type'].toString(),
      requestedType: map['requestedType'].toString(),
      fallbackReason: map['fallbackReason'].toString(),
      status: map['status'].toString(),
      sizeBytes: map['sizeBytes'],
      startedAt: map['startedAt']?.toString(),
      completedAt: map['completedAt']?.toString(),
      verifiedAt: map['verifiedAt']?.toString(),
      expiresAt: map['expiresAt']?.toString(),
      logPosition: map['logPosition']?.toString(),
      error: map['error'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "databaseId": databaseId,
      "projectId": projectId,
      "policyId": policyId,
      "trigger": trigger,
      "type": type,
      "requestedType": requestedType,
      "fallbackReason": fallbackReason,
      "status": status,
      "sizeBytes": sizeBytes,
      "startedAt": startedAt,
      "completedAt": completedAt,
      "verifiedAt": verifiedAt,
      "expiresAt": expiresAt,
      "logPosition": logPosition,
      "error": error,
    };
  }
}
