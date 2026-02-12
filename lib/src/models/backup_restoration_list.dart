part of '../../models.dart';

/// Backup restoration list
class BackupRestorationList implements Model {
    /// Total number of restorations that matched your query.
    final int total;

    /// List of restorations.
    final List<BackupRestoration> restorations;

    BackupRestorationList({
        required this.total,
        required this.restorations,
    });

    factory BackupRestorationList.fromMap(Map<String, dynamic> map) {
        return BackupRestorationList(
            total: map['total'],
            restorations: List<BackupRestoration>.from(map['restorations'].map((p) => BackupRestoration.fromMap(p))),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "restorations": restorations.map((p) => p.toMap()).toList(),
        };
    }
}
