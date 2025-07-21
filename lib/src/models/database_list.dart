part of '../../models.dart';

/// Databases List
class DatabaseList<T> implements Model {
    /// Total number of databases documents that matched your query.
    final int total;

    /// List of databases.
    final List<Database<T>> databases;

    DatabaseList({
        required this.total,
        required this.databases,
    });

    factory DatabaseList.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return DatabaseList(
            total: 
map['total'],
            databases: 
List<Database<T>>.from(map['databases'].map((p) => Database.fromMap(p, fromJson))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "total": total,
            "databases": databases.map((p) => p.toMap()).toList(),
        };
    }

    // Public getters for private underscore fields
}
