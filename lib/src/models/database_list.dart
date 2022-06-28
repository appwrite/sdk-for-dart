part of dart_appwrite.models;

/// Databases List
class DatabaseList {
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
            total: map['total'],
            databases: List<Database>.from(map['databases'].map((p) => Database.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "databases": databases.map((p) => p.toMap()),
        };
    }
}
