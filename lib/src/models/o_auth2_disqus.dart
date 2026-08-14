part of '../../models.dart';

/// OAuth2Disqus
class OAuth2Disqus implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Disqus OAuth2 public key.
    final String publicKey;

    /// Disqus OAuth2 secret key.
    final String secretKey;

    OAuth2Disqus({
        required this.$id,
        required this.enabled,
        required this.publicKey,
        required this.secretKey,
    });

    factory OAuth2Disqus.fromMap(Map<String, dynamic> map) {
        return OAuth2Disqus(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            publicKey: map['publicKey'].toString(),
            secretKey: map['secretKey'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "publicKey": publicKey,
            "secretKey": secretKey,
        };
    }
}
