part of '../../models.dart';

/// Database Migrations List
class DatabaseMigrationList implements Model {
  /// Total number of migrations that matched your query.
  final int total;

  /// List of migrations.
  final List<DatabaseMigration> migrations;

  DatabaseMigrationList({
    required this.total,
    required this.migrations,
  });
  factory DatabaseMigrationList.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseMigrationList(
      total: map['total'],
      migrations: List<DatabaseMigration>.from(
        map['migrations'].map((p) => DatabaseMigration.fromMap(p)),
      ),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "total": total,
      "migrations": migrations.map((p) => p.toMap()).toList(),
    };
  }
}
