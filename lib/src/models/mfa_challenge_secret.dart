part of '../../models.dart';

/// MFA Challenge Secret
class MfaChallengeSecret implements Model {
    /// Token ID.
    final String $id;

    /// Token creation date in ISO 8601 format.
    final String $createdAt;

    /// User ID.
    final String userId;

    /// Token expiration date in ISO 8601 format.
    final String expire;

    /// Challenge code to be delivered to the end user through a custom channel.
    final String code;

    MfaChallengeSecret({
        required this.$id,
        required this.$createdAt,
        required this.userId,
        required this.expire,
        required this.code,
    });

    factory MfaChallengeSecret.fromMap(Map<String, dynamic> map) {
        return MfaChallengeSecret(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            userId: map['userId'].toString(),
            expire: map['expire'].toString(),
            code: map['code'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "userId": userId,
            "expire": expire,
            "code": code,
        };
    }
}
