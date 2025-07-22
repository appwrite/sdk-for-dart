part of '../../models.dart';

/// Databases List
class DatabaseList implements Model {
    /// Total number of databases rows that matched your query.
    final int total;

    /// List of databases.
    final List<Database> databases;

    DatabaseList({
        required this.total,
        required this.databases,
    });

    factory DatabaseList.fromMap(Map<String, dynamic> map) {
        return DatabaseList(
            total: map['total'],
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
