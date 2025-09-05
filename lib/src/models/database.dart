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
    final String type;

    Database({
        required this.$id,
        required this.name,
        required this.$createdAt,
        required this.$updatedAt,
        required this.enabled,
        required this.type,
    });

    factory Database.fromMap(Map<String, dynamic> map) {
        return Database(
            $id: map['\$id'].toString(),
            name: map['name'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            enabled: map['enabled'],
            type: map['type'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "enabled": enabled,
            "type": type,
        };
    }
}
