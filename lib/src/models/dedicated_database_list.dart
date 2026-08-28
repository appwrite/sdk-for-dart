part of '../../models.dart';

/// Dedicated databases list
class DedicatedDatabaseList implements Model {
  /// Total number of databases that matched your query.
  final int total;

  /// List of databases.
  final List<DedicatedDatabase> databases;

  DedicatedDatabaseList({
    required this.total,
    required this.databases,
  });
  factory DedicatedDatabaseList.fromMap(
    Map<String, dynamic> map,
  ) {
    return DedicatedDatabaseList(
      total: map['total'],
      databases: List<DedicatedDatabase>.from(
        map['databases'].map((p) => DedicatedDatabase.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "databases": databases.map((p) => p.toMap()).toList(),
    };
  }
}
