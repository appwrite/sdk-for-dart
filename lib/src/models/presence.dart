part of '../../models.dart';

/// Presence
class Presence implements Model {
    /// Presence ID.
    final String $id;

    /// Presence sequence ID.
    final String $sequence;

    /// Presence creation date in ISO 8601 format.
    final String $createdAt;

    /// Presence update date in ISO 8601 format.
    final String $updatedAt;

    /// Presence permissions. [Learn more about permissions](https://appwrite.io/docs/permissions).
    final List<String> $permissions;

    /// User internal ID.
    final String userInternalId;

    /// User ID.
    final String userId;

    /// Presence status.
    final String? status;

    /// Presence source.
    final String source;

    /// Presence expiry date in ISO 8601 format.
    final String? expiresAt;

    final Map<String, dynamic> data;

    Presence({
        required this.$id,
        required this.$sequence,
        required this.$createdAt,
        required this.$updatedAt,
        required this.$permissions,
        required this.userInternalId,
        required this.userId,
        this.status,
        required this.source,
        this.expiresAt,
        required this.data,
    });

    factory Presence.fromMap(Map<String, dynamic> map) {
        return Presence(
            $id: map['\$id'].toString(),
            $sequence: map['\$sequence'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            $updatedAt: map['\$updatedAt'].toString(),
            $permissions: List.from(map['\$permissions'] ?? []),
            userInternalId: map['userInternalId'].toString(),
            userId: map['userId'].toString(),
            status: map['status']?.toString(),
            source: map['source'].toString(),
            expiresAt: map['expiresAt']?.toString(),
            data: map["data"] ?? map,
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$sequence": $sequence,
            "\$createdAt": $createdAt,
            "\$updatedAt": $updatedAt,
            "\$permissions": $permissions,
            "userInternalId": userInternalId,
            "userId": userId,
            "status": status,
            "source": source,
            "expiresAt": expiresAt,
            "data": data,
        };
    }

    T convertTo<T>(T Function(Map<String, dynamic>) fromJson) => fromJson(data);
}
