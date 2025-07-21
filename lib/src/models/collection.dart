part of '../../models.dart';

/// Collection
class Collection<T> implements Model {
    /// Collection ID.
    final String $id;

    /// Collection creation date in ISO 8601 format.
    final String $createdAt;

    /// Collection update date in ISO 8601 format.
    final String $updatedAt;

    /// Collection permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// Database ID.
    final String databaseId;

    /// Collection name.
    final String name;

    /// Collection enabled. Can be &#039;enabled&#039; or &#039;disabled&#039;. When disabled, the collection is inaccessible to users, but remains accessible to Server SDKs using API keys.
    final bool enabled;

    /// Whether document-level permissions are enabled. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final bool documentSecurity;

    /// Collection attributes.
    final List attributes;

    /// Collection indexes.
    final List<Index<T>> indexes;

    Collection({
        required this.$id,
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

    factory Collection.fromMap(Map<String, dynamic> map, [T Function(Map<String, dynamic>)? fromJson]) {
        return Collection(
            $id: 
map['\$id'].toString(),
            $createdAt: 
map['\$createdAt'].toString(),
            $updatedAt: 
map['\$updatedAt'].toString(),
            $permissions: 
List.from(map['\$permissions'] ?? []),
            databaseId: 
map['databaseId'].toString(),
            name: 
map['name'].toString(),
            enabled: 
map['enabled'],
            documentSecurity: 
map['documentSecurity'],
            attributes: 
List.from(map['attributes'] ?? []),
            indexes: 
List<Index<T>>.from(map['indexes'].map((p) => Index.fromMap(p, fromJson))),
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
            "indexes": indexes.map((p) => p.toMap()).toList(),
        };
    }

}
