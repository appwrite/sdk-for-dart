part of '../../models.dart';

/// OAuth2Amazon
class OAuth2Amazon implements Model {
    /// OAuth2 provider ID.
    final String $id;

    /// OAuth2 provider is active and can be used to create sessions.
    final bool enabled;

    /// Amazon OAuth2 client ID.
    final String clientId;

    /// Amazon OAuth2 client secret.
    final String clientSecret;

    OAuth2Amazon({
        required this.$id,
        required this.enabled,
        required this.clientId,
        required this.clientSecret,
    });

    factory OAuth2Amazon.fromMap(Map<String, dynamic> map) {
        return OAuth2Amazon(
            $id: map['\$id'].toString(),
            enabled: map['enabled'],
            clientId: map['clientId'].toString(),
            clientSecret: map['clientSecret'].toString(),
        );
    }

    @override
    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "enabled": enabled,
            "clientId": clientId,
            "clientSecret": clientSecret,
        };
    }
}
