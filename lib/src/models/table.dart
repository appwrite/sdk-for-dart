part of '../../models.dart';

/// Table
class Table implements Model {
  /// Table ID.
  final String $id;

  /// Table creation date in ISO 8601 format.
  final String $createdAt;

  /// Table update date in ISO 8601 format.
  final String $updatedAt;

  /// Table permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
  final List<String> $permissions;

  /// Database ID.
  final String databaseId;

  /// Table name.
  final String name;

  /// Table enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the table is inaccessible to users, but remains accessible to Server SDKs using API keys.
  final bool enabled;

  /// Whether row-level permissions are enabled. [Learn more about permissions](https://appwrite.io/docs/permissions).
  final bool rowSecurity;

  /// Table columns.
  final List columns;

  /// Table indexes.
  final List<ColumnIndex> indexes;

  Table({
    required this.$id,
    required this.$createdAt,
    required this.$updatedAt,
    required this.$permissions,
    required this.databaseId,
    required this.name,
    required this.enabled,
    required this.rowSecurity,
    required this.columns,
    required this.indexes,
  });

  factory Table.fromMap(Map<String, dynamic> map) {
    return Table(
      $id: map['\$id'].toString(),
      $createdAt: map['\$createdAt'].toString(),
      $updatedAt: map['\$updatedAt'].toString(),
      $permissions: List.from(map['\$permissions'] ?? []),
      databaseId: map['databaseId'].toString(),
      name: map['name'].toString(),
      enabled: map['enabled'],
      rowSecurity: map['rowSecurity'],
      columns: List.from(map['columns'] ?? []),
      indexes: List<ColumnIndex>.from(
        map['indexes'].map((p) => ColumnIndex.fromMap(p)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$createdAt": $createdAt,
      "\$updatedAt": $updatedAt,
      "\$permissions": $permissions,
      "databaseId": databaseId,
      "name": name,
      "enabled": enabled,
      "rowSecurity": rowSecurity,
      "columns": columns,
      "indexes": indexes.map((p) => p.toMap()).toList(),
    };
  }
}
