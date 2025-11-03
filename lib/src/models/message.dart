part of '../../models.dart';

/// Message
class Message implements Model {
    /// Message ID.
    final String $id;

    /// Message creation time in ISO 8601 format.
    final String $createdAt;

    /// Message update date in ISO 8601 format.
    final String $updatedAt;

    /// Message provider type.
    final String providerType;

    /// Topic IDs set as recipients.
    final List<String> topics;

    /// User IDs set as recipients.
    final List<String> users;

    /// Target IDs set as recipients.
    final List<String> targets;

    /// The scheduled time for message.
    final String? scheduledAt;

    /// The time when the message was delivered.
    final String? deliveredAt;

    /// Delivery errors if any.
    final List<String>? deliveryErrors;

    /// Number of recipients the message was delivered to.
    final int deliveredTotal;

    /// Data of the message.
    final Map<String, dynamic> data;

    /// Status of delivery.
    final enums.MessageStatus status;

    Message({
        required this.$id,
        required this.$createdAt,
        required this.$updatedAt,
        required this.providerType,
        required this.topics,
        required this.users,
        required this.targets,
        this.scheduledAt,
        this.deliveredAt,
        this.deliveryErrors,
        required this.deliveredTotal,
        required this.data,
        required this.status,
    });

    factory Message.fromMap(Map<String, dynamic> map) {
        return Message(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            providerType: map['providerType'].toString(),
            topics: List.from(map['topics'] ?? []),
            users: List.from(map['users'] ?? []),
            targets: List.from(map['targets'] ?? []),
            scheduledAt: map['scheduledAt']?.toString(),
            deliveredAt: map['deliveredAt']?.toString(),
            deliveryErrors: List.from(map['deliveryErrors'] ?? []),
            deliveredTotal: map['deliveredTotal'],
            data: map['data'],
            status: enums.MessageStatus.values.firstWhere((e) => e.value == map['status']),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "providerType": providerType,
            "topics": topics,
            "users": users,
            "targets": targets,
            "scheduledAt": scheduledAt,
            "deliveredAt": deliveredAt,
            "deliveryErrors": deliveryErrors,
            "deliveredTotal": deliveredTotal,
            "data": data,
            "status": status.value,
        };
    }
}
