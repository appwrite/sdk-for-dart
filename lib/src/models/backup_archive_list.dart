part of '../../models.dart';

/// Backup archive list
class BackupArchiveList implements Model {
    /// Total number of archives that matched your query.
    final int total;

    /// List of archives.
    final List<BackupArchive> archives;

    BackupArchiveList({
        required this.total,
        required this.archives,
    });

    factory BackupArchiveList.fromMap(Map<String, dynamic> map) {
        return BackupArchiveList(
            total: map['total'],
            archives: List<BackupArchive>.from(map['archives'].map((p) => BackupArchive.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "archives": archives.map((p) => p.toMap()).toList(),
        };
    }
}
