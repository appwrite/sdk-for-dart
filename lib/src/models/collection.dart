part of dart_appwrite.models;

/// Collection
class Collection {
    /// Collection ID.
    final String $id;
    /// Collection creation date in Unix timestamp.
    final int $createdAt;
    /// Collection update date in Unix timestamp.
    final int $updatedAt;
    /// Collection read permissions.
    final List $read;
    /// Collection write permissions.
    final List $write;
    /// Database ID.
    final String databaseId;
    /// Collection name.
    final String name;
    /// Collection enabled.
    final bool enabled;
    /// Collection permission model. Possible values: `document` or `collection`
    final String permission;
    /// Collection attributes.
    final List attributes;
    /// Collection indexes.
    final List<Index> indexes;

    Collection({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.$read,
        required this.$write,
        required this.databaseId,
        required this.name,
        required this.enabled,
        required this.permission,
        required this.attributes,
        required this.indexes,
    });

    factory Collection.fromMap(Map<String, dynamic> map) {
        return Collection(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'],
            $updatedAt: map['\$updatedAt'],
            $read: map['\$read'],
            $write: map['\$write'],
            databaseId: map['databaseId'].toString(),
            name: map['name'].toString(),
            enabled: map['enabled'],
            permission: map['permission'].toString(),
            attributes: map['attributes'],
            indexes: List<Index>.from(map['indexes'].map((p) => Index.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "\$read": $read,
            "\$write": $write,
            "databaseId": databaseId,
            "name": name,
            "enabled": enabled,
            "permission": permission,
            "attributes": attributes,
            "indexes": indexes.map((p) => p.toMap()),
        };
    }
}
