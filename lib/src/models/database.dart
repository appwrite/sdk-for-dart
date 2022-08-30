part of dart_appwrite.models;

/// Database
class Database {
    /// Database ID.
    final String $id;
    /// Database name.
    final String name;
    /// Collection creation date in Unix timestamp.
    final int $createdAt;
    /// Collection update date in Unix timestamp.
    final int $updatedAt;

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
            $createdAt: map['\$createdAt'],
            $updatedAt: map['\$updatedAt'],
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
