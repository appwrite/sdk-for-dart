part of '../../models.dart';

/// Databases List
class DatabaseList implements Model {
    /// Total number of databases documents that matched your query.
    final int total;
    /// List of databases.
    final List<Database> databases;

    DatabaseList({
        required this.total,
        required this.databases,
    });

    factory DatabaseList.fromMap(Map<String, dynamic> map) {
        return DatabaseList(
            total: (map['total'] is String) ?
                        int.tryParse(map['total']) ?? 0:map['total'] ?? 0,
            databases: List<Database>.from(map['databases'].map((p) => Database.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "databases": databases.map((p) => p.toMap()).toList(),
        };
    }
}
