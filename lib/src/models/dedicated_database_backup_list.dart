part of '../../models.dart';

/// BackupList
class DedicatedDatabaseBackupList implements Model {
  /// Total number of backups.
  final int total;

  /// List of backups.
  final List<DedicatedDatabaseBackup> backups;

  DedicatedDatabaseBackupList({
    required this.total,
    required this.backups,
  });
  factory DedicatedDatabaseBackupList.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseBackupList(
      total: map['total'],
      backups: List<DedicatedDatabaseBackup>.from(
        map['backups'].map((p) => DedicatedDatabaseBackup.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "backups": backups.map((p) => p.toMap()).toList(),
    };
  }
}
