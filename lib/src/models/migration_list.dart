part of '../../models.dart';

/// Migrations List
class MigrationList implements Model {
  /// Total number of migrations that matched your query.
  final int total;

  /// List of migrations.
  final List<Migration> migrations;

  MigrationList({
    required this.total,
    required this.migrations,
  });
  factory MigrationList.fromMap(
    Map<String, dynamic> map,
  ) {
    map = {
      'total': 0,
      'migrations': [],
      ...map,
    };

    return MigrationList(
      total: map['total'],
      migrations: List<Migration>.from(
        map['migrations'].map((p) => Migration.fromMap(p)),
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
