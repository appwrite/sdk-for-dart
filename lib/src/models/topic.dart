part of '../../models.dart';

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

    /// Total count of email subscribers subscribed to the topic.
    final int emailTotal;

    /// Total count of SMS subscribers subscribed to the topic.
    final int smsTotal;

    /// Total count of push subscribers subscribed to the topic.
    final int pushTotal;

    /// Subscribe permissions.
    final List<String> subscribe;

    Topic({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.name,
        required this.emailTotal,
        required this.smsTotal,
        required this.pushTotal,
        required this.subscribe,
    });

    factory Topic.fromMap(Map<String, dynamic> map) {
        return Topic(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            name: map['name'].toString(),
            emailTotal: map['emailTotal'],
            smsTotal: map['smsTotal'],
            pushTotal: map['pushTotal'],
            subscribe: List.from(map['subscribe'] ?? []),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "name": name,
            "emailTotal": emailTotal,
            "smsTotal": smsTotal,
            "pushTotal": pushTotal,
            "subscribe": subscribe,
        };
    }
}
