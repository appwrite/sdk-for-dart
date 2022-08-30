part of dart_appwrite.models;

/// Database
class Database {
    /// Database ID.
    final String $id;
    /// Database name.
    final String name;

    Database({
        required this.$id,
        required this.name,
    });

    factory Database.fromMap(Map<String, dynamic> map) {
        return Database(
            $id: map['\$id'].toString(),
            name: map['name'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
        };
    }
}
