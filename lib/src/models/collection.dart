part of dart_appwrite.models;

/// Collection
class Collection implements Model {
    /// Collection ID.
    final String $id;
    /// Collection creation date in Datetime
    final String $createdAt;
    /// Collection update date in Datetime
    final String $updatedAt;
    /// Collection permissions. [Learn more about permissions](/docs/permissions).
    final List $permissions;
    /// Database ID.
    final String databaseId;
    /// Collection name.
    final String name;
    /// Collection enabled.
    final bool enabled;
    /// Whether document-level permissions are enabled. [Learn more about permissions](/docs/permissions).
    final bool documentSecurity;
    /// Collection attributes.
    final List attributes;
    /// Collection indexes.
    final List<Index> indexes;

    Collection({        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.$permissions,
        required this.databaseId,
        required this.name,
        required this.enabled,
        required this.documentSecurity,
        required this.attributes,
        required this.indexes,
    });

    factory Collection.fromMap(Map<String, dynamic> map) {
        return Collection(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            $permissions: map['\$permissions'],
            databaseId: map['databaseId'].toString(),
            name: map['name'].toString(),
            enabled: map['enabled'],
            documentSecurity: map['documentSecurity'],
            attributes: map['attributes'],
            indexes: List<Index>.from(map['indexes'].map((p) => Index.fromMap(p))),
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
            "documentSecurity": documentSecurity,
            "attributes": attributes,
            "indexes": indexes.map((p) => p.toMap()),
        };
    }
}
