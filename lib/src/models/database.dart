part of '../../models.dart';

/// Database
class Database implements Model {
  /// Database ID.
  final String $id;

  /// Database name.
  final String name;

  /// Database creation date in ISO 8601 format.
  final String $createdAt;

  /// Database update date in ISO 8601 format.
  final String $updatedAt;

  /// If database is enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the database is inaccessible to users, but remains accessible to Server SDKs using API keys.
  final bool enabled;

  /// Database type.
  final enums.DatabaseType type;

  /// Database backup policies.
  final List<Index> policies;

  /// Database backup archives.
  final List<Collection> archives;

  Database({
    required this.$id,
    required this.name,
    required this.$createdAt,
    required this.$updatedAt,
    required this.enabled,
    required this.type,
    required this.policies,
    required this.archives,
  });

  factory Database.fromMap(Map<String, dynamic> map) {
    return Database(
      $id: map['\$id'].toString(),
      name: map['name'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      enabled: map['enabled'],
      type: enums.DatabaseType.values.firstWhere((e) => e.value == map['type']),
      policies: List<Index>.from(map['policies'].map((p) => Index.fromMap(p))),
      archives: List<Collection>.from(
          map['archives'].map((p) => Collection.fromMap(p))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "name": name,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "enabled": enabled,
      "type": type.value,
      "policies": policies.map((p) => p.toMap()).toList(),
      "archives": archives.map((p) => p.toMap()).toList(),
    };
  }
}
