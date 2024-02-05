part of dart_appwrite.models;

/// Topic
class Topic implements Model {
    /// Topic ID.
    final String $id;
    /// Topic creation time in ISO 8601 format.
    final String $createdAt;
    /// Topic update date in ISO 8601 format.
    final String $updatedAt;
    /// The name of the topic.
    final String name;
    /// Total count of subscribers subscribed to topic.
    final int total;
    /// Description of the topic.
    final String? description;

    Topic({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.total,
        this.description,
    });

    factory Topic.fromMap(Map<String, dynamic> map) {
        return Topic(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            total: map['total'],
            description: map['description']?.toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "total": total,
            "description": description,
        };
    }
}
