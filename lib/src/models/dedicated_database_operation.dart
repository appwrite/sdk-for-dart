part of '../../models.dart';

/// Operation
class DedicatedDatabaseOperation implements Model {
  /// Operation ID.
  final String $id;

  /// Operation creation time in ISO 8601 format.
  final String $createdAt;

  /// Database ID the operation ran against.
  final String databaseId;

  /// Operation type, such as provision, update, restore, pausing, resuming, failover, backup-create or cross-region-enable.
  final String type;

  /// Operation status. Possible values: running (in progress), completed (finished successfully), failed (ended in an error).
  final String status;

  /// Number of times this operation has been attempted.
  final int attempts;

  /// Time the operation was requested, in ISO 8601 format.
  final String? requestedAt;

  /// Time the operation started, in ISO 8601 format.
  final String? startedAt;

  /// Time the operation reached a terminal state, in ISO 8601 format.
  final String? completedAt;

  /// Machine-readable failure code. `LockLost` marks an attempt that was fenced and abandoned because another worker took over the database.
  final String errorCode;

  /// Failure message if the operation failed.
  final String errorMessage;

  DedicatedDatabaseOperation({
    required this.$id,
    required this.$createdAt,
    required this.databaseId,
    required this.type,
    required this.status,
    required this.attempts,
    this.requestedAt,
    this.startedAt,
    this.completedAt,
    required this.errorCode,
    required this.errorMessage,
  });

  factory DedicatedDatabaseOperation.fromMap(Map<String, dynamic> map) {
    return DedicatedDatabaseOperation(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      databaseId: map['databaseId'].toString(),
      type: map['type'].toString(),
      status: map['status'].toString(),
      attempts: map['attempts'],
      requestedAt: map['requestedAt']?.toString(),
      startedAt: map['startedAt']?.toString(),
      completedAt: map['completedAt']?.toString(),
      errorCode: map['errorCode'].toString(),
      errorMessage: map['errorMessage'].toString(),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "databaseId": databaseId,
      "type": type,
      "status": status,
      "attempts": attempts,
      "requestedAt": requestedAt,
      "startedAt": startedAt,
      "completedAt": completedAt,
      "errorCode": errorCode,
      "errorMessage": errorMessage,
    };
  }
}
