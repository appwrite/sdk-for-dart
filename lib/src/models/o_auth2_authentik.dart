part of '../../models.dart';

/// OAuth2Authentik
class OAuth2Authentik implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Authentik OAuth2 client ID.
    final String clientId;

    /// Authentik OAuth2 client secret.
    final String clientSecret;

    /// Authentik OAuth2 endpoint domain.
    final String endpoint;

    OAuth2Authentik({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.clientSecret,
        required this.endpoint,
    });

    factory OAuth2Authentik.fromMap(Map<String, dynamic> map) {
        return OAuth2Authentik(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            clientSecret: map['clientSecret'].toString(),
            endpoint: map['endpoint'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "clientSecret": clientSecret,
            "endpoint": endpoint,
        };
    }
}
