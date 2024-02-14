part of dart_appwrite.models;

/// Token
class Token implements Model {
    /// Token ID.
    final String $id;
    /// Token creation date in ISO 8601 format.
    final String $createdAt;
    /// User ID.
    final String userId;
    /// Token secret key. This will return an empty string unless the response is returned using an API key or as part of a webhook payload.
    final String secret;
    /// Token expiration date in ISO 8601 format.
    final String expire;

    Token({
        required this.$id,
        required this.$createdAt,
        required this.userId,
        required this.secret,
        required this.expire,
    });

    factory Token.fromMap(Map<String, dynamic> map) {
        return Token(
            $id: map['\$id'].toString(),
            $createdAt: map['\$createdAt'].toString(),
            userId: map['userId'].toString(),
            secret: map['secret'].toString(),
            expire: map['expire'].toString(),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$createdAt": $createdAt,
            "userId": userId,
            "secret": secret,
            "expire": expire,
        };
    }
}
