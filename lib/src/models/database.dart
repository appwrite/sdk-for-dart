part of dart_appwrite.models;

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

    Database({
        required this.$id,
        required this.name,
        required this.$createdAt,
        required this.$updatedAt,
    });

    factory Database.fromMap(Map<String, dynamic> map) {
        return Database(
            $id: map['\$id'].toString(),
            name: map['name'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
        };
    }
}
